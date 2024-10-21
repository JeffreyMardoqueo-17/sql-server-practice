CREATE DATABASE IF NOT EXISTS Practica USE Practica GO
CREATE TABLE
    Cargo (
        Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
        Nombre VARCHAR(50) NOT NULL
    ) GO
CREATE TABLE
    Usuario (
        Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
        Nombre VARCHAR(50) NOT NULL,
        Correo VARCHAR(50) NOT NULL,
        Contrasena VARCHAR(Max) NOT NULL,
        Fecha de Registro DATETIME NOT NULL DEFAULT GETDATE (),
        IdCargo INT NOT NULL FOREIGN KEY REFERENCES Cargo (Id)
    ) GO
CREATE TABLE
    Productos (
        Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
        Nombre VARCHAR(50) NOT NULL,
        Descripcion VARCHAR(50) NOT NULL,
        Precio DECIMAL(18, 2) NOT NULL,
        Stock INT NOT NULL,
        FechaRegistro DATETIME NOT NULL DEFAULT GETDATE (),
    ) GO
    -------------------------------------CONSULTAS CRUD-------------------------------------
    -----------------CREAR
INSERT INTO
    Cargo (Nombre)
VALUES
    ('Administrador');

go
SELECT
    *
FROM
    Cargo;

INSERT INTO
    Usuario (Nombre, Correo, Contrasena, IdCargo)
VALUES
    ('Jeffrey', 'jeffrey@gmail.com', '12233', 1);

SELECT
    *
FROM
    Usuario;

GO
INSERT INTO
    Productos (Nombre, Descripcion, Precio, Stock)
VALUES
    ('Laptop', 'Laptop HP', 500.00, 10);

SELECT
    *
from
    Productos;

---------------------Update