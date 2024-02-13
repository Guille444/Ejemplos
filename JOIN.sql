/*Ejemplo de INNER JOIN/*

CREATE DATABASE ejemplo;

USE ejemplo;

CREATE TABLE empleado(
id INT PRIMARY KEY,
nombre VARCHAR (100),
departamento_id INT,
salario DECIMAL (10,2)
);

CREATE TABLE departamento (
id INT PRIMARY KEY,
nombre VARCHAR (100)
);

INSERT INTO departamento (id, nombre)
VALUES (1, 'Ventas'), (2, 'Marketing'), (3, 'Recursos Humanos');

INSERT INTO empleado (id, nombre, departamento_id, salario)
VALUES (1, 'Juan', 1, 3000.00), (2, 'María', 1, 3200.50), (3, 'Pedro', 2, 2800.00), (4, 'Luisa', 3, 3500.75);

SELECT empleado.nombre, departamento.nombre
FROM empleado
INNER JOIN departamento ON empleado.departamento_id = departamento.id;

*/Ejemplo de LFET JOIN/*

CREATE DATABASE ejemplo2;

USE ejemplo2;

CREATE TABLE empleado(
id INT PRIMARY KEY,
nombre VARCHAR (100),
departamento_id INT,
salario DECIMAL (10,2)
);

CREATE TABLE departamento (
id INT PRIMARY KEY,
nombre VARCHAR (100)
);

INSERT INTO departamento (id, nombre)
VALUES (1, 'Ventas'), (2, 'Marketing'), (3, 'Recursos Humanos');

INSERT INTO empleado (id, nombre, departamento_id, salario)
VALUES (1, 'Juan', 1, 3000.00), (2, 'María', 1, 3200.50), (3, 'Pedro', 2, 2800.00), (4, 'Luisa', 3, 3500.75);

SELECT empleado.nombre, departamento.nombre
FROM empleado
LEFT JOIN departamento ON empleado.departamento_id = departamento.id;

*/Ejemplo de RIGHT JOIN/*

CREATE DATABASE ejemplo3;

USE ejemplo3;

CREATE TABLE empleado(
id INT PRIMARY KEY,
nombre VARCHAR (100),
departamento_id INT,
salario DECIMAL (10,2)
);

CREATE TABLE departamento (
id INT PRIMARY KEY,
nombre VARCHAR (100)
);

INSERT INTO departamento (id, nombre)
VALUES (1, 'Ventas'), (2, 'Marketing'), (3, 'Recursos Humanos');

INSERT INTO empleado (id, nombre, departamento_id, salario)
VALUES (1, 'Juan', 1, 3000.00), (2, 'María', 1, 3200.50), (3, 'Pedro', 2, 2800.00), (4, 'Luisa', 3, 3500.75);

SELECT empleado.nombre, departamento.nombre
FROM empleado
RIGHT JOIN departamento ON empleado.departamento_id = departamento.id;

*/Ejemplo de FULL JOIN/*

CREATE DATABASE ejemplo4;

USE ejemplo4;

CREATE TABLE empleado(
id INT PRIMARY KEY,
nombre VARCHAR (100),
departamento_id INT,
salario DECIMAL (10,2)
);

CREATE TABLE departamento (
id INT PRIMARY KEY,
nombre VARCHAR (100)
);

INSERT INTO departamento (id, nombre)
VALUES (1, 'Ventas'), (2, 'Marketing'), (3, 'Recursos Humanos');

INSERT INTO empleado (id, nombre, departamento_id, salario)
VALUES (1, 'Juan', 1, 3000.00), (2, 'María', 1, 3200.50), (3, 'Pedro', 2, 2800.00), (4, 'Luisa', 3, 3500.75);

SELECT empleado.noombre, departamento.nombre 
FROM empleado
LEFT JOIN departamento ON empleado.departamento_id = departamento.id
UNION
SELECT SELECT empleado.nombre, departamento.nombre
FROM empleado
RIGHT JOIN departamento ON empleado.departamento_id = departamento.id
WHERE empleado.departamento_id IS NULL;

*/Ejemplo de CROSS JOIN/*

CREATE DATABASE ejemplo5;

USE ejemplo5;

CREATE TABLE empleado(
id INT PRIMARY KEY,
nombre VARCHAR (100),
departamento_id INT,
salario DECIMAL (10,2)
);

CREATE TABLE departamento (
id INT PRIMARY KEY,
nombre VARCHAR (100)
);

INSERT INTO departamento (id, nombre)
VALUES (1, 'Ventas'), (2, 'Marketing'), (3, 'Recursos Humanos');

INSERT INTO empleado (id, nombre, departamento_id, salario)
VALUES (1, 'Juan', 1, 3000.00), (2, 'María', 1, 3200.50), (3, 'Pedro', 2, 2800.00), (4, 'Luisa', 3, 3500.75);

SELECT empleado.nombre, departamento.nombre 
FROM empleado
CROSS JOIN departamento;

*/Ejemplo de SELF JOIN/*

CREATE DATABASE ejemplo6;

USE ejemplo6;

CREATE TABLE empleado(
id INT PRIMARY KEY,
nombre VARCHAR (100),
departamento_id INT,
salario DECIMAL (10,2)
);

CREATE TABLE departamento (
id INT PRIMARY KEY,
nombre VARCHAR (100)
);

INSERT INTO departamento (id, nombre)
VALUES (1, 'Ventas'), (2, 'Marketing'), (3, 'Recursos Humanos');

INSERT INTO empleado (id, nombre, departamento_id, salario)
VALUES (1, 'Juan', 1, 3000.00), (2, 'María', 1, 3200.50), (3, 'Pedro', 2, 2800.00), (4, 'Luisa', 3, 3500.75);

SELECT e.1nombre AS empleado, e2.nombre AS jefe
FROM empleado e1
JOIN empleado e2 ON e1.jefe_id = e2.id;
