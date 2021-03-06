﻿CREATE DATABASE migracion;
USE migracion;

CREATE TABLE sede_migracion
(id_sede INTEGER PRIMARY KEY,
direccion_sede VARCHAR(100) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE cita_pasaporte
(id_cita INTEGER PRIMARY KEY,
nombre_persona VARCHAR(255) NOT NULL,
apellidos_persona VARCHAR(255) NOT NULL,
correo_electronico VARCHAR(255) NOT NULL,
celular_persona VARCHAR(10) NOT NULL,
fecha_cita DATETIME NOT NULL,
hora_cita VARCHAR(6) NOT NULL,
sede_migracion int NOT NULL,
altura_persona VARCHAR(20) NOT NULL,
tez_persona VARCHAR(20) NOT NULL,
ojos_persona VARCHAR(20) NOT NULL,
ocupacion_persona VARCHAR(50) NOT NULL,
municipio_residencia VARCHAR(50) NOT NULL,
departamento_residencia VARCHAR(50) NOT NULL,
numero_boleta INT NOT NULL,
numero_recibo INT NOT NULL,
FOREIGN KEY(sede_migracion) REFERENCES sede_migracion(id_sede) ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=latin1;