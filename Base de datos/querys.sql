-- Creación de la BD
CREATE DATABASE tarea02;
GO

-- Usando la BD
USE tarea02;
GO

-- Creación de tablas
CREATE TABLE rol(
	idrol integer primary key identity,
	nombre varchar(30),
	descripcion varchar(MAX),
	estado bit default(1)
);

CREATE TABLE persona(
	idpersona integer primary key identity,
	nombre varchar(30) not null,
	apellido varchar(30) not null,
	edad integer,
	telefono varchar(8),
	idrol integer,
	FOREIGN KEY (idrol) REFERENCES rol(idrol)
);

CREATE TABLE pelicula(
	nombre varchar(50) primary key not null,
	fecha date,
	duracion integer,
	clasificacion varchar(5),
	estudio varchar(50),
	director varchar(30),
	genero varchar(30)
);

CREATE TABLE acceso_premier(
	idapremier integer primary key identity,
	nombre_pelicula varchar(50),
	idpersona integer,
	FOREIGN KEY (nombre_pelicula) REFERENCES pelicula(nombre),
	FOREIGN KEY (idpersona) REFERENCES persona(idpersona)
);
GO

-- Inserción de datos

-- Inserción de roles predefinidos
INSERT INTO rol (nombre, descripcion)
VALUES
	('Gerente', 'Gerente del cine'),
	('Supervisor', 'Supervisor del cine'),
	('Personal', 'Todo el personal de trabajo del cine como taquilla, tienda, portero, etc'),
	('Administracion', 'Persona encargado de las cuentas y finanzas'),
	('RRHH', 'Personal de recursos humanos'),
	('Seguridad', 'Personal de seguridad');

SELECT * FROM rol;
GO

-- Inserción de peliculas
INSERT INTO pelicula
VALUES
	('AVENGERS', '20201215 10:34:09 AM',95,'A','MARVEL','Hermanos Russo','Ciencia Ficcion'),
	('AVENGERS 2', '20211215 10:34:09 AM',95,'A','MARVEL','Hermanos Russo','Ciencia Ficcion');

SELECT * FROM pelicula;
GO

-- Inserción de personas
INSERT INTO persona (nombre, apellido, edad, telefono, idrol)
VALUES
	('Juan', 'Benitez',25,22742222,1),
	('Pepito', 'Perez',23,22742242,3);

SELECT * FROM persona;
GO
