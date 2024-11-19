-- a) Crear un reporte que muestre, por cada localidad, el hobby
-- predominante y la cantidad de alumnos que lo practican.

-- Helpers
SELECT * FROM LOCALIDAD order by id_localidad ASC;
SELECT * FROM HOBBY ORDER BY id_hobby ASC;
SELECT * FROM HOBBY_INTEGRANTE where id_integrante in (1,3,5,20,22,28,34);

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
) sub
WHERE rn = 1;