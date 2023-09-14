CREATE SCHEMA `Ventas` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE `Ventas`.`proveedores` (
  `cedula_proveedor` INT NOT NULL,
  `tipo_cedula` VARCHAR(20) NOT NULL,
  `nombre_proveedor` VARCHAR(45) NOT NULL,
  `correo_proveedor` VARCHAR(100) NOT NULL,
  `telefono_proveedor` INT NOT NULL,
  `ID_territorio` INT NOT NULL,
  PRIMARY KEY (`cedula_proveedor`));

CREATE TABLE `Ventas`.`productos` (
  `ID_Producto` INT NOT NULL,
  `nombre_producto` VARCHAR(45) NOT NULL,
  `Precio` INT NOT NULL,
  `ID_Categoria` INT NOT NULL,
  `Color` VARCHAR(45) NULL,
  `ID_Universal` INT NOT NULL,
  `Tamaño` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Producto`));

CREATE TABLE `Ventas`.`Categoria` (
  `ID_Categoria` INT NOT NULL,
  `subcategoria` INT NOT NULL,
  PRIMARY KEY (`ID_Categoria`));

CREATE TABLE `Ventas`.`Territorio` (
  `ID_territorio` INT NOT NULL,
  `nombre_territorio` VARCHAR(45) NOT NULL,
  `Provincia` VARCHAR(45) NULL,
  `Canton` VARCHAR(45) NULL,
  `Distrito` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_territorio`));


CREATE TABLE `Ventas`.`Clientes` (
  `cedula_cliente` INT NOT NULL,
  `Tipo_Cedula` VARCHAR(20) NOT NULL,
  `nombre_cliente` VARCHAR(45) NULL,
  `direccion_exacta` VARCHAR(45) NULL,
  `correo_cliente` VARCHAR(45) NULL,
  `telefono_cliente` INT NOT NULL,
  PRIMARY KEY (`cedula_cliente`));


CREATE TABLE `Ventas`.`Factura` (
  `ID_factura` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `Cantidad` INT NULL,
  `Precio_unitario` INT NULL,
  `Porcentaje_impuesto` INT NULL,
  `Fecha_de_compra` DATETIME NULL,
  PRIMARY KEY (`ID_factura`));

CREATE TABLE `Ventas`.`Venta` (
  `ID_factura` INT NOT NULL,
  `ID_Producto` INT NOT NULL,
  `Cantidad` INT NOT NULL);
INSERT INTO `Ventas`.`proveedores` (`cedula_proveedor`, `tipo_cedula`, `nombre_proveedor`, `correo_proveedor`, `telefono_proveedor`, `ID_territorio`)
VALUES
  (10148523, 'Fisica', 'Proveedor A', 'proveedorA@example.com', 12345690, 1),
  (10284920, 'Fisica', 'Proveedor B', 'proveedorB@example.com', 9876510, 2),
  (10129113, 'Fisica', 'Proveedor C', 'proveedorC@example.com', 5555555, 3),
  (45831104, 'Fisica', 'Proveedor D', 'proveedorD@example.com', 7777777, 1),
  (34850305, 'Fisica', 'Proveedor E', 'proveedorE@example.com', 99999999, 2),
  (58684506, 'Fisica', 'Proveedor F', 'proveedorF@example.com', 8888888, 3),
  (32094822, 'Juridica', 'Proveedor G', 'proveedorG@example.com', 4444444, 1),
  (10364839, 'Fisica', 'Proveedor H', 'proveedorH@example.com', 222222, 2),
  (10943847, 'Fisica', 'Proveedor I', 'proveedorI@example.com', 666666, 3),
  (11043848, 'Juridica', 'Proveedor J', 'proveedorJ@example.com', 33333333, 1);


-- Datos de ejemplo para la tabla de productos
INSERT INTO `Ventas`.`productos` (`ID_Producto`, `nombre_producto`, `Precio`, `ID_Categoria`, `Color`, `ID_Universal`, `Tamaño`)
VALUES
  (1, 'Producto A', 50, 1, 'Rojo', 101, 'Pequeño'),
  (2, 'Producto B', 75, 2, 'Azul', 102, 'Mediano'),
  (3, 'Producto C', 60, 1, 'Verde', 103, 'Grande'),
  (4, 'Producto D', 45, 2, 'Amarillo', 104, 'Pequeño'),
  (5, 'Producto E', 90, 1, 'Negro', 105, 'Mediano'),
  (6, 'Producto F', 70, 2, 'Blanco', 106, 'Grande'),
  (7, 'Producto G', 55, 1, 'Gris', 107, 'Pequeño'),
  (8, 'Producto H', 65, 2, 'Naranja', 108, 'Mediano'),
  (9, 'Producto I', 80, 1, 'Morado', 109, 'Grande'),
  (10, 'Producto J', 40, 2, 'Rosa', 110, 'Pequeño');

INSERT INTO `Ventas`.`Categoria` (`ID_Categoria`, `subcategoria`)
VALUES
  (1, 101),
  (2, 102),
  (3, 103),
  (4, 104),
  (5, 105),
  (6, 106),
  (7, 107),
  (8, 108),
  (9, 109),
  (10, 110);
  
  INSERT INTO `Ventas`.`Territorio` (`ID_territorio`, `nombre_territorio`, `Provincia`, `Canton`, `Distrito`)
VALUES
  (1, 'Territorio 1', 'San José', 'Goicoechea', 'Mata de Platano'),
  (2, 'Territorio 2', 'Alajuela', 'Grecia', 'Tacares'),
  (3, 'Territorio 3', 'Cartago', 'Paraíso', 'Orosi'),
  (4, 'Territorio 4', 'San José', 'Goicoechea', 'Ipís'),
  (5, 'Territorio 5', 'Alajuela', 'Grecia', 'San Isidro'),
  (6, 'Territorio 6', 'Cartago', 'Paraíso', 'Cachí'),
  (7, 'Territorio 7', 'San José', 'Goicoechea', 'Calle Blancos'),
  (8, 'Territorio 8', 'Alajuela', 'Grecia', 'San Roque'),
  (9, 'Territorio 9', 'Cartago', 'Paraíso', 'Santiago'),
  (10, 'Territorio 10', 'San José', 'Goicoechea', 'Guadalupe');

-- Datos para la tabla de Clientes
INSERT INTO `Ventas`.`Clientes` (`cedula_cliente`, `Tipo_Cedula`, `nombre_cliente`, `direccion_exacta`, `correo_cliente`, `telefono_cliente`)
VALUES
  (10012345, 'Fisica', 'Andrés Hidalgo', 'Dirección 1', 'cliente1@example.com', 1111111),
  (10028765, 'Fisica', 'Gloria Mata', 'Dirección 2', 'cliente2@example.com', 2222222),
  (1003828, 'Juridica', 'Ericka Douglas', 'Dirección 3', 'cliente3@example.com', 3333333),
  (10049878, 'Fisica', 'Carmen Curling', 'Dirección 4', 'cliente4@example.com', 4444444),
  (1005379, 'Juridica', 'Thiago Hidalgo', 'Dirección 5', 'cliente5@example.com', 5555555),
  (10060998, 'Fisica', 'Ian Hidalgo', 'Dirección 6', 'cliente6@example.com', 6666666),
  (10073092, 'Juridica', 'Olivia H', 'Dirección 7', 'cliente7@example.com', 7777777),
  (10082334, 'Fisica', 'Josue D', 'Dirección 8', 'cliente8@example.com', 88888888),
  (10091234, 'Fisica', 'Amelie B', 'Dirección 9', 'cliente9@example.com', 99999999),
  (1010832, 'Juridica', 'Priscila K', 'Dirección 10', 'cliente10@example.com', 1010110);

-- Datos para la tabla de Factura
INSERT INTO `Ventas`.`Factura` (`ID_factura`, `descripcion`, `Cantidad`, `Precio_unitario`, `Porcentaje_impuesto`, `Fecha_de_compra`)
VALUES
  (1, 'Percolador', 2, 50, 10, '2022-09-11 10:00:00'),
  (2, 'Tendedero', 3, 30, 5, '2023-05-13 11:00:00'),
  (3, 'Mesa', 1, 70, 8, '2023-05-13 12:00:00'),
  (4, 'Cepillo', 4, 60, 12, '2023-09-01 13:00:00'),
  (5, 'computadora', 2, 40, 7, '2023-09-01 14:00:00'),
  (6, 'escritorio', 1, 80, 15, '2023-09-02 15:00:00'),
  (7, 'silla', 3, 55, 9, '2023-09-12 16:00:00'),
  (8, 'andadera', 2, 35, 6, '2023-09-11 17:00:00'),
  (9, 'encierro', 5, 75, 10, '2023-09-13 18:00:00'),
  (10, 'abanico', 2, 65, 11, '2023-09-13 19:00:00');

-- Datos para la tabla de Venta
INSERT INTO `Ventas`.`Venta` (`ID_factura`, `ID_Producto`, `Cantidad`)
VALUES
  (1, 1, 2),
  (2, 2, 3),
  (3, 2, 1),
  (4, 4, 4),
  (5, 5, 2),
  (6, 5, 1),
  (7, 7, 3),
  (8, 8, 2),
  (9, 8, 5),
  (10, 10, 2);

ALTER TABLE `Ventas`.`productos` 
ADD INDEX `ID_Categoria_idx` (`ID_Categoria` ASC) VISIBLE;
;
ALTER TABLE `Ventas`.`productos` 
ADD CONSTRAINT `ID_Categoria`
  FOREIGN KEY (`ID_Categoria`)
  REFERENCES `Ventas`.`Categoria` (`ID_Categoria`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `Ventas`.`productos` 
DROP FOREIGN KEY `ID_Categoria`;
ALTER TABLE `Ventas`.`productos` 
ADD COLUMN `cedula_proveedor` INT NULL AFTER `Tamaño`,
ADD INDEX `cedula_proveedor_idx` (`cedula_proveedor` ASC) VISIBLE,
DROP INDEX `ID_Categoria_idx` ;
;
ALTER TABLE `Ventas`.`productos` 
ADD CONSTRAINT `cedula_proveedor`
  FOREIGN KEY (`cedula_proveedor`)
  REFERENCES `Ventas`.`proveedores` (`cedula_proveedor`);




ALTER TABLE `Ventas`.`proveedores` 
ADD INDEX `ID_territorio_idx` (`ID_territorio` ASC) VISIBLE;
;
ALTER TABLE `Ventas`.`proveedores` 
ADD CONSTRAINT `ID_territorio`
  FOREIGN KEY (`ID_territorio`)
  REFERENCES `Ventas`.`Territorio` (`ID_territorio`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `Ventas`.`Venta` 
ADD INDEX `ID_factura_idx` (`ID_factura` ASC) VISIBLE,
ADD INDEX `ID_Producto_idx` (`ID_Producto` ASC) VISIBLE;
;
ALTER TABLE `Ventas`.`Venta` 
ADD CONSTRAINT `ID_factura`
  FOREIGN KEY (`ID_factura`)
  REFERENCES `Ventas`.`Factura` (`ID_factura`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `ID_Producto`
  FOREIGN KEY (`ID_Producto`)
  REFERENCES `Ventas`.`productos` (`ID_Producto`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- Queries
-- ¿Cuánto dinero se ha vendido en total por mes?
USE Ventas;
SELECT 
    DATE_FORMAT(F.Fecha_de_compra, '%Y-%m') AS Mes,
    SUM(F.Precio_unitario * F.Cantidad * (1 + F.Porcentaje_impuesto / 100)) AS Total_Vendido
FROM
    Factura F
JOIN
    Venta V ON F.ID_factura = V.ID_factura
GROUP BY
    Mes
ORDER BY
    Mes;

-- ¿Cuántos productos diferentes tiene la empresa?
SELECT COUNT(DISTINCT ID_Producto) AS Productos_Diferentes
FROM Productos;

-- ¿Cuáles son los proveedores a los que más unidades de productos se les compra?
SELECT
    P.cedula_proveedor,
    P.nombre_proveedor,
    SUM(V.Cantidad) AS Total_Unidades_Compradas
FROM
    proveedores P
JOIN
    productos Pr ON P.cedula_proveedor = Pr.cedula_proveedor
JOIN
    Venta V ON Pr.ID_Producto = V.ID_Producto
GROUP BY
    P.cedula_proveedor, P.nombre_proveedor
ORDER BY
    Total_Unidades_Compradas DESC;


-- ¿Cuáles son los clientes a los que más unidades de productos se les vende?
SELECT
    C.cedula_cliente,
    C.nombre_cliente,
    SUM(V.Cantidad) AS Total_Unidades_Vendidas
FROM
    Clientes C
JOIN
    Factura F ON C.cedula_cliente = F.ID_factura
JOIN
    Venta V ON F.ID_factura = V.ID_factura
GROUP BY
    C.cedula_cliente, C.nombre_cliente
ORDER BY
    Total_Unidades_Vendidas DESC;

-- ¿Qué categoría de producto vende menos?
SELECT
    C.ID_Categoria,
    C.subcategoria,
    COUNT(V.ID_Producto) AS Ventas_Productos
FROM
    Categoria C
LEFT JOIN
    Productos P ON C.ID_Categoria = P.ID_Categoria
LEFT JOIN
    Venta V ON P.ID_Producto = V.ID_Producto
GROUP BY
    C.ID_Categoria, C.subcategoria
ORDER BY
    Ventas_Productos ASC
LIMIT 1;

-- Productos mas vendidos
SELECT
    P.ID_Producto,
    P.nombre_producto,
    SUM(V.Cantidad) AS Total_Unidades_Vendidas
FROM
    Productos P
JOIN
    Venta V ON P.ID_Producto = V.ID_Producto
GROUP BY
    P.ID_Producto, P.nombre_producto
ORDER BY
    Total_Unidades_Vendidas DESC
LIMIT 10;

