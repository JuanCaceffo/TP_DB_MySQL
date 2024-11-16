-- Agregamos atributos para id_trabajo y id_localidad
ALTER TABLE INTEGRANTE ADD COLUMN (
id_trabajo INT,
id_localidad INT
);

-- Referenciamos dichos atributos con sus respectivas tablas
ALTER TABLE INTEGRANTE
ADD CONSTRAINT fk_id_trabajo FOREIGN KEY (id_trabajo) REFERENCES TRABAJO (id_trabajo),
ADD CONSTRAINT fk_id_localidad FOREIGN KEY (id_localidad) REFERENCES LOCALIDAD (id_localidad)
ON DELETE CASCADE
ON UPDATE CASCADE;




