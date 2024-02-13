CREATE DATABASE SubconsultaEjemplo;
 
USE SubconsultaEjemplo;
 
CREATE TABLE Productos (
id_producto INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
precio DECIMAL(10, 2) NOT NULL
);
 
INSERT INTO Productos (nombre, precio) VALUES
('Camiseta', 19.99),
('Pantalón', 39.99),
('Zapatos', 79.99),
('Bolso', 29.99);
 
SELECT nombre, precio
FROM Productos
WHERE precio = (
SELECT MAX(precio)
FROM Productos
);
