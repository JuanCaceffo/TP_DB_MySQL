-- a) Crear un reporte que muestre, por cada localidad, el hobby
-- predominante y la cantidad de alumnos que lo practican.

-- Esta query no obtiene el resultado esperado
SELECT l.nombre AS Localidad, h.nombre AS Hobby_mas_comun, COUNT(hi.id_hobby) AS Total_alumnos FROM HOBBY_INTEGRANTE hi
JOIN INTEGRANTE i ON (hi.id_integrante = i.id_integrante)
JOIN HOBBY h ON (hi.id_hobby = h.id_hobby)
JOIN LOCALIDAD l ON (i.id_localidad = l.id_localidad)
GROUP BY Localidad, h.nombre;
-- HAVING (Total_alumnos > 3);

-- Esta a priori funciona correctamente pero la veo muy rebuscada
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
