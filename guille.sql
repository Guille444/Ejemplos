DROP DATABASE Prueba;
CREATE DATABASE Prueba;

USE Prueba;

/*COUNT()*/
CREATE TABLE usuarios(
id_usuario INT NOT NULL PRIMARY KEY,
usuario VARCHAR(30)
);

INSERT INTO usuarios (id_usuario, usuario) VALUES
('1', 'Juan'),
('2', 'María'),
('3', 'Carlos'),
('4', 'Ana'),
('5', 'Pedro');

SELECT COUNT(*) AS total_usuarios FROM usuarios;

/*SUM()*/
CREATE TABLE ventas(
id_venta INT NOT NULL PRIMARY KEY,
producto VARCHAR(30),
precio int
);

INSERT INTO ventas (id_venta,producto,precio) VALUES
('1', 'Manzana', 10),
('2', 'Naranja', 15),
('3', 'Fresas', 10),
('4', 'Uva', 20),
('5', 'Mandarina', 10);

SELECT SUM(precio) AS total_ventas FROM ventas;

/*AVG()*/
CREATE TABLE calificaciones(
id_calificacion INT NOT NULL PRIMARY KEY,
calificacion int
);

INSERT INTO calificaciones (id_calificacion,calificacion) VALUES
('1', 85),
('2', 90),
('3', 75),
('4', 95),
('5', 80);

SELECT AVG(calificacion) AS promedio_calificacion FROM calificaciones;

/*MIN()*/
CREATE TABLE productos(
id_producto INT NOT NULL PRIMARY KEY,
producto VARCHAR(30),
precio INT
);

INSERT INTO productos (id_producto,producto, precio) VALUES
('1', 'Plátano', 10),
('2', 'Pan', 15),
('3', 'Queso', 12),
('4', 'Crema', 20),
('5', 'Coca Cola', 18);

SELECT MIN(precio) AS precio_minimo FROM productos;

/*MAX()*/
SELECT MAX(precio) AS precio_maximo FROM productos;
