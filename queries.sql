-- a) Crear un reporte que muestre, por cada localidad, el hobby
-- predominante y la cantidad de alumnos que lo practican.
SELECT Localidad, Hobby_mas_comun, Total_alumnos FROM (
    SELECT 
        l.nombre AS Localidad, 
        h.nombre AS Hobby_mas_comun, 
        COUNT(hi.id_hobby) AS Total_alumnos,
        ROW_NUMBER() OVER (PARTITION BY l.nombre ORDER BY COUNT(hi.id_hobby)DESC, h.nombre ) AS rn
    FROM HOBBY_INTEGRANTE hi
    JOIN INTEGRANTE i ON hi.id_integrante = i.id_integrante
    JOIN HOBBY h ON hi.id_hobby = h.id_hobby
    JOIN LOCALIDAD l ON i.id_localidad = l.id_localidad
    GROUP BY l.nombre, h.nombre
) sub WHERE rn = 1;

-- b) Generar un análisis que incluya la cantidad de materias en curso
-- por los alumnos y que detalle su experiencia previa en bases de datos
-- (dividida entre relacional y no relacional). Top 5
SELECT 
i.apellido AS Alumno, 
COUNT(em.id_materia) AS 'Materias_en_curso', 
IF(e.db_no_relacional = 1, 'Sí', 'No') AS db_no_relacional,
IF(e.db_relacional = 1, 'Sí', 'No') AS db_relacional
FROM ESTUDIANTE_MATERIA em
JOIN INTEGRANTE i ON i.id_integrante = em.id_estudiante
JOIN ESTUDIANTE e ON e.id_integrante = em.id_estudiante
GROUP BY em.id_estudiante, i.apellido, e.db_no_relacional, e.db_relacional
ORDER BY i.id_integrante ASC
LIMIT 5;

-- c) Identificar la materia más popular en cada grupo de estudio y el
-- porcentaje de alumnos de cada grupo que está inscrito en esas materias.
-- * 20 por regla de 3.... cantidad x 100% / 5 (max grupo)
SELECT nombre_materia, nombre_grupo, total_alumno, porcentaje_grupo FROM (
	SELECT m.nombre AS nombre_materia, g.nombre AS nombre_grupo, 
	COUNT(i.id_integrante) as total_alumno, 
	CONCAT(COUNT(i.id_integrante) * 20, '%') as porcentaje_grupo,
	ROW_NUMBER() OVER (PARTITION BY g.nombre ORDER BY COUNT(i.id_integrante) DESC, m.nombre) AS rn
	FROM ESTUDIANTE_GRUPO_ROL egr
	JOIN ESTUDIANTE i ON (egr.id_estudiante = i.id_integrante)
	JOIN GRUPO g ON (egr.id_grupo = g.id_grupo)
	JOIN ESTUDIANTE_MATERIA em ON (i.id_integrante = em.id_estudiante)
	JOIN MATERIA m ON (em.id_materia = m.id_materia)
	GROUP BY m.nombre, g.nombre
) sub WHERE rn = 1;


-- d) Crear un reporte que identifique alumnos con experiencia
-- significativa en temas de bases de datos o actividades tecnológicas,
-- clasificándolos como posibles mentores para el resto de los compañeros. TOP 5
SELECT i.apellido AS Alumno,
IF(e.db_no_relacional = 1, 'Sí', 'No') AS "Experiencia BD Relacional",
IF(e.db_relacional = 1, 'Sí', 'No') AS "Experiencia BD No Relacional",
t.nombre AS Actividad
FROM INTEGRANTE AS i
JOIN ESTUDIANTE AS e ON (e.id_integrante = i.id_integrante)
JOIN TRABAJO AS t ON (t.id_trabajo = i.id_trabajo)
WHERE e.db_no_relacional = 1 
AND  e.db_relacional = 1 
OR t.nombre in ("Backend", "IT", "Data analytics", "Desarrollador aplicaciones")
LIMIT 5;

-- Desarrollar consultas avanzadas 
-- a) Listar la cantidad de alumnos por localidad junto con el número de
-- materias promedio en las que están inscriptos, lo cual permitiría
-- analizar la carga académica en diferentes áreas geográficas.
SELECT 
l.nombre AS Localidad,
ROUND(COUNT(em.id_materia) / COUNT(DISTINCT e.id_integrante), 2) AS Promedio_materias,
COUNT(DISTINCT e.id_integrante) AS Total_alumnos
FROM INTEGRANTE AS i
JOIN ESTUDIANTE AS e ON i.id_integrante = e.id_integrante
JOIN ESTUDIANTE_MATERIA AS em ON e.id_integrante = em.id_estudiante
JOIN LOCALIDAD AS l ON i.id_localidad = l.id_localidad
GROUP BY l.nombre
ORDER BY Total_alumnos DESC;




-- b) Generar un reporte que muestre qué alumnos pueden actuar como
-- mentores de otros (match), basándose en afinidades de intereses y
-- experiencia en temas específicos (como bases de datos). Se
-- muestran alumnos junto a posibles mentores con experiencia en
-- áreas similares.

SELECT 
    mentor_integrante.apellido AS Mentor_Apellido,
    mentee_integrante.apellido AS Mentee_Apellido,
    GROUP_CONCAT(hobby.nombre) AS Hobbies_Compartidos,
    estudiante_mentor.db_relacional AS Mentor_DB_Relacional,
    estudiante_mentor.db_no_relacional AS Mentor_DB_No_Relacional
FROM HOBBY_INTEGRANTE hi_mentor
INNER JOIN HOBBY_INTEGRANTE hi_mentee ON (hi_mentor.id_hobby = hi_mentee.id_hobby)
AND (hi_mentor.id_integrante != hi_mentee.id_integrante)
INNER JOIN INTEGRANTE mentor_integrante ON (hi_mentor.id_integrante = mentor_integrante.id_integrante)
INNER JOIN INTEGRANTE mentee_integrante ON (hi_mentee.id_integrante = mentee_integrante.id_integrante)
INNER JOIN HOBBY hobby ON (hi_mentor.id_hobby = hobby.id_hobby)
INNER JOIN ESTUDIANTE estudiante_mentor ON (mentor_integrante.id_integrante = estudiante_mentor.id_integrante)
INNER JOIN ESTUDIANTE estudiante_mentee ON (mentee_integrante.id_integrante = estudiante_mentee.id_integrante)
WHERE estudiante_mentor.db_relacional > estudiante_mentee.db_relacional
OR estudiante_mentor.db_no_relacional > estudiante_mentee.db_no_relacional
GROUP BY mentor_integrante.id_integrante, mentee_integrante.id_integrante
ORDER BY Mentor_Apellido, Mentee_Apellido;

CREATE INDEX idx_hobby_integrante ON HOBBY_INTEGRANTE(id_integrante, id_hobby);
CREATE INDEX idx_estudiante_materia ON ESTUDIANTE_MATERIA(id_estudiante, id_materia);
CREATE INDEX idx_integrante_localidad ON INTEGRANTE(id_localidad);

