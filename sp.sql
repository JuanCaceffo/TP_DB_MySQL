DELIMITER //

CREATE PROCEDURE sp_inscripcion_materia (
    IN p_estudiante INT,
    IN p_materia INT
)
BEGIN
    INSERT INTO inscripcion_materia (
        ESTUDIANTE,
        MATERIA
    ) 
    VALUES (
        p_estudiante,
        p_materia
    );
END;
//

DELIMITER ;

-- Ejecutar el procedimiento almacenado para ver los resultados
CALL sp_inscripcion_materia(1, 101); -- Reemplaza los valores con los que necesites

-- Mostrar registros insertados
SELECT * 
FROM inscripcion_materia;