CREATE DATABASE db_clinica;
USE db_clinica;

CREATE TABLE pacientes (
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE
);

CREATE TABLE doctores (
    idDoctor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE citas (
    idCita INT PRIMARY KEY AUTO_INCREMENT,
    idPaciente INT,
    idDoctor INT,
    fechaCita DATETIME NOT NULL,
    motivo VARCHAR(200),
    FOREIGN KEY (idPaciente) REFERENCES pacientes(idPaciente),
    FOREIGN KEY (idDoctor) REFERENCES doctores(idDoctor)
);