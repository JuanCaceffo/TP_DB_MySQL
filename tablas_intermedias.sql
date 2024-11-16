CREATE TABLE ESTUDIANTE_MATERIA (
	id_estudiante_materia INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_estudiante INT NOT NULL,
    id_materia INT NOT NULL,
    UNIQUE (id_estudiante, id_materia),
    FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE (id_integrante),
    FOREIGN KEY (id_materia) REFERENCES MATERIA (id_materia)  
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE DOCENTE_MATERIA (
	id_docente_materia INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_docente INT NOT NULL,
    id_materia INT NOT NULL,
    UNIQUE (id_docente, id_materia),
    FOREIGN KEY (id_docente) REFERENCES DOCENTE (id_integrante),
    FOREIGN KEY (id_materia) REFERENCES MATERIA (id_materia)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE HOBBY_INTEGRANTE(
	id_hobby_integrante INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_hobby INT NOT NULL,
    id_integrante INT NOT NULL,
    UNIQUE (id_hobby, id_integrante),
    FOREIGN KEY (id_hobby) REFERENCES HOBBY (id_hobby),
    FOREIGN KEY (id_integrante) REFERENCES INTEGRANTE (id_integrante)  
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE MASCOTA_INTEGRANTE(
	id_mascota_integrante INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    id_mascota INT NOT NULL,
    id_integrante INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0), 
    UNIQUE (id_mascota,id_integrante),
    FOREIGN KEY (id_mascota) REFERENCES MASCOTA (id_mascota),
    FOREIGN KEY (id_integrante) REFERENCES INTEGRANTE (id_integrante)  
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE ESTUDIANTE_GRUPO_ROL(
	id_estudiante_grupo_rol INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    id_estudiante INT NOT NULL,
    id_grupo INT NOT NULL,
    id_rol INT NOT NULL,
    UNIQUE (id_estudiante, id_grupo, id_rol),
    FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE (id_integrante),
	FOREIGN KEY (id_grupo) REFERENCES GRUPO (id_grupo),
	FOREIGN KEY (id_rol) REFERENCES ROL (id_rol) 
    ON DELETE CASCADE
    ON UPDATE CASCADE
);