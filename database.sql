-- Creación de la base de datos (Ejecutar esto primero si es necesario)
-- CREATE DATABASE productos_db;
-- \c productos_db;

-- Creación de la tabla productos
CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500),
    precio DECIMAL(10, 2) NOT NULL,
    imagen VARCHAR(500)
);

-- Inserción de 5 productos de prueba
INSERT INTO productos (nombre, descripcion, precio, imagen) VALUES
('Camiseta Básica Blanca', 'Camiseta de algodón 100% manga corta', 15.99, 'https://ejemplo.com/img/camiseta_blanca.jpg'),
('Pantalón Vaquero Clásico', 'Pantalón vaquero azul corte recto', 39.50, 'https://ejemplo.com/img/vaquero.jpg'),
('Chaqueta de Cuero Sintético', 'Chaqueta negra estilo motero', 59.99, 'https://ejemplo.com/img/chaqueta_cuero.jpg'),
('Zapatillas Deportivas', 'Zapatillas para correr muy cómodas', 45.00, 'https://ejemplo.com/img/zapatillas.jpg'),
('Sudadera con Capucha', 'Sudadera gris con bolsillo canguro', 25.00, 'https://ejemplo.com/img/sudadera.jpg');
