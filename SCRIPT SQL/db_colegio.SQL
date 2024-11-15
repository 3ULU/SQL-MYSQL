CREATE DATABASE db_colegio;
USE db_colegio;

CREATE TABLE estudiantes (
    idEstudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    grado VARCHAR(20) NOT NULL
);

CREATE TABLE profesores (
    idProfesor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50)
);

CREATE TABLE asignaturas (
    idAsignatura INT PRIMARY KEY AUTO_INCREMENT,
    idProfesor INT,
    nombreAsignatura VARCHAR(100) NOT NULL,
    FOREIGN KEY (idProfesor) REFERENCES profesores(idProfesor)
);