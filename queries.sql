-- a) Crear un reporte que muestre, por cada localidad, el hobby
-- predominante y la cantidad de alumnos que lo practican.
SELECT Localidad, Hobby_mas_comun, Total_alumnos FROM (
    SELECT 
        l.nombre AS Localidad, 
        h.nombre AS Hobby_mas_comun, 
        COUNT(hi.id_hobby) AS Total_alumnos,
        ROW_NUMBER() OVER (PARTITION BY l.nombre ORDER BY COUNT(hi.id_hobby) DESC) AS rn
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
SELECT 
m.nombre, 
g.nombre, 
COUNT(i.id_integrante) as total_alumno, 
CONCAT(COUNT(i.id_integrante) * 20, '%') as porcentaje_grupo,
ROW_NUMBER() OVER (PARTITION BY g.nombre ORDER BY COUNT(i.id_integrante) DESC) AS rn
FROM ESTUDIANTE_GRUPO_ROL egr
JOIN ESTUDIANTE i ON (egr.id_estudiante = i.id_integrante)
JOIN GRUPO g ON (egr.id_grupo = g.id_grupo)
JOIN ESTUDIANTE_MATERIA em ON (i.id_integrante = em.id_estudiante)
JOIN MATERIA m ON (em.id_materia = m.id_materia)
GROUP BY m.nombre, g.nombre;

/* d) Crear un reporte que identifique alumnos con experiencia
significativa en temas de bases de datos o actividades tecnológicas,
clasificándolos como posibles mentores para el resto de los
compañeros. TOP 5
*/
SELECT 
	i.apellido AS Alumno,
	IF(e.db_no_relacional = 1, 'Sí', 'No') AS "Experiencia BD Relacional",
	IF(e.db_relacional = 1, 'Sí', 'No') AS "Experiencia BD No Relacional",
    t.nombre AS Actividad
FROM INTEGRANTE AS i
JOIN ESTUDIANTE AS e ON (e.id_integrante = i.id_integrante)
JOIN TRABAJO AS t ON (t.id_trabajo = i.id_trabajo)
WHERE 
	e.db_no_relacional = 1 
    AND 
    e.db_relacional = 1 
    OR
    t.nombre in ("Backend", "IT", "Data analytics", "Desarrollador aplicaciones")
LIMIT 5
;