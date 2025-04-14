CREATE DATABASE Comercio;
USE Comercio;
CREATE TABLE Categorias (
    Id INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(50)
);

CREATE TABLE Productos (
    Codigo INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(100),
    Descripcion NVARCHAR(255),
    Precio DECIMAL(10,2),
    Stock INT,
    CategoriaId INT,
    FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id)
);

-- Insertar categorías
INSERT INTO Categorias (Nombre) VALUES ('Tecnología'), ('Hogar'), ('Ropa');

-- Insertar productos
INSERT INTO Productos (Nombre, Descripcion, Precio, Stock, CategoriaId) VALUES
('Notebook Lenovo', 'Notebook i5 8GB RAM', 850000, 10, 1),
('Licuadora Philips', '600W, vaso de vidrio', 320000, 5, 2),
('Camisa Blanca', 'Manga larga, algodón', 180000, 15, 3);


CREATE TABLE Contactos (
    ID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
	Apellido NVARCHAR(100),
    Telefono NVARCHAR(255),
    Correo VARCHAR(30),
    CategoriaId Varchar(30),
);

DROP TABLE Contactos;


INSERT INTO Contactos(ID, Nombre, Apellido, Telefono, Correo, CategoriaId)
VALUES
(1, 'Juan', 'Pérez', '123-456-7890', 'juan.perez@example.com', 'Cliente'),
(2, 'Ana', 'López', '987-654-3210', 'ana.lopez@example.com', 'Empleado'),
(3, 'Carlos', 'Rodríguez', '456-789-0123', 'carlos.rodriguez@example.com', 'Proveedor'),
(4, 'María', 'González', '321-654-9870', 'maria.gonzalez@example.com', 'Cliente'),
(5, 'Luis', 'Martínez', '654-321-0987', 'luis.martinez@example.com', 'Empleado');

SELECT * FROM Contactos;
