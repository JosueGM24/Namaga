DROP DATABASE IF EXISTS PUNTO_VENTA;
CREATE DATABASE PUNTO_VENTA;
USE PUNTO_VENTA;
CREATE TABLE PROVEEDORES(
    ID_PROVEEDOR INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    NOMBRE_PROVEEDOR CHAR(20),	
    TELEFONO_PROVEEDOR VARCHAR(14),
    EMAIL_PROVEEDOR VARCHAR(30),
    FECHA_UNION DATE,
    ACTIVO BOOLEAN,	
    FECHA_BAJA DATE
);
INSERT INTO PROVEEDORES VALUES(NULL, 'ALEJANDRO', '78-98-92-52-10', 'ALEJANDRO@gmail.com', '2022/02/01', true, null);
INSERT INTO PROVEEDORES VALUES(NULL, 'JOSUE', '55-08-12-52-10', 'JOSSS@gmail.com', '2021/12/26', true, null);
INSERT INTO PROVEEDORES VALUES(NULL, 'DANIEL', '55-04-34-52-10', 'DANIEL@gmail.com', '2002/02/24', true, null);
INSERT INTO PROVEEDORES VALUES(NULL, 'SARA', '55-06-92-52-09', 'SARAISELA@gmail.com', '2002/02/15', true, null);
INSERT INTO PROVEEDORES VALUES(NULL, 'JIMENA', '55-98-92-66-40', 'JIMENAGM@gmail.com', '2021/12/14', true, null);
INSERT INTO PROVEEDORES VALUES(NULL, 'KAREN', '55-98-54-65-50', 'KRPI@gmail.com', '2021/09/14', true, null);
INSERT INTO PROVEEDORES VALUES(NULL, 'PAMELA', '55-11-53-52-00', 'PAME32@gmail.com', '2022/10/21', true, null);
INSERT INTO PROVEEDORES VALUES(NULL, 'ESTEBAN', '55-08-54-52-22', 'ESTEBANG@gmail.com', '2021/09/31', true, null);
INSERT INTO PROVEEDORES VALUES(NULL, 'IVAN', '55-54-43-52-12', 'IVANHD@gmail.com', '2012/09/11', true, null);
INSERT INTO PROVEEDORES VALUES(NULL, 'LUIS', '55-43-23-52-24', 'LUISS@gmail.com', '2012/02/23', true, null);
SELECT * FROM PROVEEDORES;
SELECT TELEFONO_PROVEEDOR FROM PROVEEDORES WHERE ID_PROVEEDOR = 2;
SELECT * FROM PROVEEDORES ORDER BY ID_PROVEEDOR ASC;
SELECT * FROM PROVEEDORES ORDER BY ID_PROVEEDOR DESC;
UPDATE PROVEEDORES SET TELEFONO_PROVEEDOR = '55-98-99-52-08' WHERE ID_PROVEEDOR = 2;
DELETE FROM PROVEEDORES WHERE ID_PROVEEDOR = 9;
SELECT * FROM PROVEEDORES;

CREATE TABLE PRODUCTOS (
    CODIGO_PRODUCTO VARCHAR(30),
    NOMBRE_PRODUCTO VARCHAR(30),
    MARCA_PRODUCTO VARCHAR(30),	
    PRECIO_PRODUCTO DOUBLE,	
    STOCK_PRODUCTO INT(4),	
    VENTAS_DIARIAS DOUBLE,	
    VENTAS_MENSUALES DOUBLE,
    VENTAS_ANUALES DOUBLE,
    VENTAS_TOTALES DOUBLE
);
INSERT INTO PRODUCTOS VALUES ("42522655699898", 'DORITOS NORM', 'SABRITAS', 15, 34, 133, 1443, 13442, 65442);
INSERT INTO PRODUCTOS VALUES ("99852206623235", 'FRITOS NORM', 'SABRITAS', 12, 65, 132, 1443, 5442, 33442);
INSERT INTO PRODUCTOS VALUES ("55883329922006", 'RANCHERITOS NORM', 'SABRITAS', 34, 344, 133, 643, 15442, 65442);
INSERT INTO PRODUCTOS VALUES ("52588523698526", 'CHEETOS NORM', 'SABRITAS', 16, 13, 543, 1443, 53442, 64442);
INSERT INTO PRODUCTOS VALUES ("86985665526652", 'RUFLES NORM', 'SABRITAS', 18, 54, 114, 1443, 5442, 543442);
INSERT INTO PRODUCTOS VALUES ("58998526856622", 'PAPAS NAT', 'SABRITAS', 18, 54, 166, 532, 6442, 15442);
INSERT INTO PRODUCTOS VALUES ("52258500220022", 'PAPAS ADB', 'SABRITAS', 18, 75, 176, 434, 3442, 5442);
INSERT INTO PRODUCTOS VALUES ("85228855225030", 'PAPAS CREM', 'SABRITAS', 18, 27, 163, 943, 1642,5432);
INSERT INTO PRODUCTOS VALUES ("58852668522882", 'CHEETOS BOL', 'SABRITAS', 16, 64, 63, 743, 1442, 53442);
INSERT INTO PRODUCTOS VALUES ("55202558200652", 'CHURRUMAIS', 'SABRITAS', 10, 64, 53, 143, 1352, 5442);
SELECT * FROM PRODUCTOS;
SELECT NOMBRE_PRODUCTO FROM PRODUCTOS WHERE CODIGO_PRODUCTO = "42522655699898";
SELECT AVG(VENTAS_DIARIAS) FROM PRODUCTOS;
SELECT MIN(VENTAS_DIARIAS) FROM PRODUCTOS;
SELECT MAX(VENTAS_DIARIAS) FROM PRODUCTOS;
SELECT * FROM PRODUCTOS ORDER BY NOMBRE_PRODUCTO ASC;
SELECT * FROM PRODUCTOS ORDER BY NOMBRE_PRODUCTO DESC;
SELECT NOMBRE_PRODUCTO, SUM(VENTAS_DIARIAS) FROM PRODUCTOS GROUP BY NOMBRE_PRODUCTO; 
UPDATE PRODUCTOS SET VENTAS_DIARIAS = '243233' WHERE CODIGO_PRODUCTO = "58998526856622";
DELETE FROM PRODUCTOS WHERE CODIGO_PRODUCTO = "55202558200652";
SELECT * FROM PRODUCTOS;

CREATE TABLE USUARIOS (
    ID_USUARIO INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOMBRE_USUARIO VARCHAR(30),
    APELLIDO1_USUARIO VARCHAR(30),
    APELLIDO2_USUARIO VARCHAR(30),	
    USUARIO VARCHAR(30),
    PASSWORD_U VARCHAR(30),
    FECHA_CREACION DATE,
    ID_PRIVILEGIOS INT(3)
);
INSERT INTO USUARIOS VALUES(NULL, 'SARA', 'GODINEZ', 'MELECIO', 'SARAFDD', '3KK4M3', '2010-10-20', 1);
INSERT INTO USUARIOS VALUES(NULL, 'JIMENA', 'HERNANDEZ', 'RODRIGUEZ', 'JIENS', 'SDSA3', '2020-05-01', 1);
INSERT INTO USUARIOS VALUES(NULL, 'GABRIEL', 'GODINEZ', 'SOSA', 'SANTII', '13424', '2010-10-15', 1);
INSERT INTO USUARIOS VALUES(NULL, 'SANTIAGO', 'RODRIGUEZ', 'GOMEZ', 'SANTI22', 'DDF3', '2018-12-30', 1);
INSERT INTO USUARIOS VALUES(NULL, 'DELIA', 'PEREZ', 'FLORES', 'DELL', '13443', '2022-09-12', 1);
INSERT INTO USUARIOS VALUES(NULL, 'ARTURO', 'LOPEZ', 'PEREZ', 'ARTT13', '432CF', '2008-12-30', 1);
INSERT INTO USUARIOS VALUES(NULL, 'JIMENA', 'ROCANDIO', 'MARTINEZ', 'JIMENA23', '234ASD', '2012-01-12', 1);
INSERT INTO USUARIOS VALUES(NULL, 'MICHEL', 'HERNANDEZ', 'MAGON', 'DIAN32', 'ASDAS3', '2011-01-10', 1);
INSERT INTO USUARIOS VALUES(NULL, 'LUCIA', 'MELECIO', 'RODRIGUEZ', 'LUCESD2', 'ASD3', '2002-10-28', 1);
INSERT INTO USUARIOS VALUES(NULL, 'FERNANDA', 'MARTINEZ', 'MARTINEZ', 'FERN34', 'SDAS443', '2009-11-23', 1);
SELECT * FROM USUARIOS;
SELECT NOMBRE_USUARIO FROM USUARIOS WHERE ID_USUARIO = 1;
SELECT * FROM USUARIOS ORDER BY NOMBRE_USUARIO ASC;
SELECT * FROM USUARIOS ORDER BY APELLIDO1_USUARIO DESC;
UPDATE USUARIOS SET PASSWORD_U = '54FF3' WHERE ID_USUARIO = 3;
DELETE FROM USUARIOS WHERE ID_USUARIO = 2;
SELECT * FROM USUARIOS;

CREATE TABLE PEDIDOS (
    ID_PEDIDO INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY, 	
    ID_TICKET INT(4),	
    ID_CLIENTE INT(4),	
    TOTAL_PEDIDO DOUBLE,	
    DESCUENTO_PEDIDO DOUBLE,	
    PAGADO BOOLEAN,
    EFECTIVO_PAGADO DOUBLE,
    FECHA_PEDIDO DATE,	
    ENTREGADO BOOLEAN,
    FECHA_ENTREGADO DATE
);
INSERT INTO PEDIDOS VALUES (NULL, 1332, 2, 433, 0, FALSE, NULL, '2010-10-20', FALSE, NULL );
INSERT INTO PEDIDOS VALUES (NULL, 3234, 1, 733, 0, TRUE, 543, '2020-05-01', FALSE, NULL );
INSERT INTO PEDIDOS VALUES (NULL, 243, 3, 343, 0, TRUE, 133, '2010-10-15', FALSE, NULL );
INSERT INTO PEDIDOS VALUES (NULL, 1322, 6, 33, 0, TRUE, 33, '2018-12-30', FALSE, NULL );
INSERT INTO PEDIDOS VALUES (NULL, 12, 4, 643, 0, FALSE, NULL, '2022-09-12', FALSE, NULL );
INSERT INTO PEDIDOS VALUES (NULL, 232, 1, 643, 0, TRUE, 245, '2008-12-30', FALSE, NULL );
INSERT INTO PEDIDOS VALUES (NULL, 4332, 4, 133, 0, TRUE, 133, '2012-01-12', FALSE, NULL );
INSERT INTO PEDIDOS VALUES (NULL, 5332, 2,343, 0, FALSE, NULL, '2011-01-10', FALSE, NULL );
INSERT INTO PEDIDOS VALUES (NULL, 332, 1, 543, 0, FALSE, NULL, '2002-10-28', FALSE, NULL );
INSERT INTO PEDIDOS VALUES (NULL, 532, 3, 53, 0, FALSE, NULL, '2009-11-23', FALSE, NULL );
SELECT * FROM PEDIDOS;
SELECT ID_CLIENTE FROM PEDIDOS WHERE ID_PEDIDO = 2;
SELECT AVG(TOTAL_PEDIDO) FROM PEDIDOS;
SELECT MIN(TOTAL_PEDIDO) FROM PEDIDOS;
SELECT MAX(TOTAL_PEDIDO) FROM PEDIDOS;
SELECT * FROM PEDIDOS ORDER BY TOTAL_PEDIDO ASC;
SELECT * FROM PEDIDOS ORDER BY TOTAL_PEDIDO DESC;
SELECT ID_CLIENTE, SUM(TOTAL_PEDIDO) FROM PEDIDOS GROUP BY ID_CLIENTE; 
UPDATE PEDIDOS SET TOTAL_PEDIDO = 2344 WHERE ID_PEDIDO = 4;
DELETE FROM PEDIDOS WHERE ID_PEDIDO = 4;
SELECT * FROM PEDIDOS;

CREATE TABLE CLIENTES(
    ID_CLIENTE INT(5) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    NOMBRE_CLIENTE CHAR(20), 
    APELLIDO1_CLIENTE CHAR(20), 
    APELLIDO2_CLIENTE CHAR(20), 
    TELEFONO_CLIENTE VARCHAR(14),
    COMPRAS INT(5)
)AUTO_INCREMENT = 2000;
INSERT INTO CLIENTES VALUES(NULL, 'PAMELA', 'PINEDA', 'BAUTISTA', '55-66-58-99-55', 10);
INSERT INTO CLIENTES VALUES(NULL, 'KAREN', 'RODRIGUEZ', 'BAUTISTA', '55-99-55-85-55', 4);
INSERT INTO CLIENTES VALUES(NULL, 'ARTURO', 'SANCHEZ', 'CRUZ', '55-66-55-87-12', 34);
INSERT INTO CLIENTES VALUES(NULL, 'CARLOS', 'ALEGRIA', 'ESPINOZA', '56-98-52-10-55', 5);
INSERT INTO CLIENTES VALUES(NULL, 'ANGEL', 'SOSA', 'PAZ', '55-61-02-22-01', 21);
INSERT INTO CLIENTES VALUES(NULL, 'ARMANDO', 'GUERRERO', 'DALI', '55-71-74-65-64', 2);
INSERT INTO CLIENTES VALUES(NULL, 'MIGUEL', 'ESCALONA', 'MARTINEZ', '55-00-02-05-53', 1);
INSERT INTO CLIENTES VALUES(NULL, 'JOSE', 'SOSA', 'ARREOLO', '55-54-23-65-99', 87);
INSERT INTO CLIENTES VALUES(NULL, 'ALEJANDRO', 'NAVA', 'HERNANDEZ', '56-21-56-46-35', 10);
INSERT INTO CLIENTES VALUES(NULL, 'EMILIO', 'MARTINEZ', 'HERNANDEZ', '56-65-35-54-23', 5);
SELECT * FROM CLIENTES;
SELECT TELEFONO_CLIENTE FROM CLIENTES WHERE ID_CLIENTE = 1002;
SELECT AVG(COMPRAS) FROM CLIENTES;
SELECT MIN(COMPRAS) FROM CLIENTES;
SELECT MAX(COMPRAS) FROM CLIENTES;
SELECT * FROM CLIENTES ORDER BY APELLIDO1_CLIENTE ASC;
SELECT * FROM CLIENTES ORDER BY NOMBRE_CLIENTE DESC;
SELECT NOMBRE_CLIENTE, SUM(COMPRAS) FROM CLIENTES GROUP BY NOMBRE_CLIENTE; 
UPDATE CLIENTES SET TELEFONO_CLIENTE = '55-98-99-52-08' WHERE ID_CLIENTE = 2004;
DELETE FROM CLIENTES WHERE ID_CLIENTE = 2002;
SELECT * FROM CLIENTES;



SELECT NOMBRE_CLIENTE, TELEFONO_CLIENTE, PEDIDOS.TOTAL_PEDIDO, PEDIDOS.ENTREGADO 
FROM CLIENTES 
INNER JOIN PEDIDOS 
ON CLIENTES.ID_CLIENTE = PEDIDOS.ID_CLIENTE;

SELECT CLIENTES.NOMBRE_CLIENTE, NOMBRE_PRODUCTO  
FROM PRODUCTOS 
CROSS JOIN CLIENTES;