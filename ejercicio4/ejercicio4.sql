-- EJERCICIO 4
-- procedimiento almacenado donde puedas escribir el id de la orden y muestra el nombre y apellido del empleado
-- que atendio como el nombre de la compañia

-- usar la base de datos db_tienda
USE db_tienda;

-- comprobamos que el procedimiento almacenado no exista y si existe que se modifique
DROP PROCEDURE IF EXISTS `mostrar_orden_datos_empleado_empresa`;

-- usar la base de datos db_tienda
USE db_tienda $$

-- el procedimiento almacenado lo delimitamos
DELIMITER $$
-- creacion del procedimiento almacenado, que acepte un parametro
CREATE PROCEDURE `mostrar_orden_datos_empleado_empresa`(IN num_orden INT)
BEGIN
-- ingresamos la sentencia SQL 
	
    SELECT orders.OrderID AS `Numero Orden` , employees.FirstName AS `Nombre Empleado`, employees.LastName AS `Apellido Empleado` , customers.CompanyName AS `Nombre Compañia` 
    FROM orders
    INNER JOIN 
		employees ON orders.EmployeeID = employees.EmployeeID
	INNER JOIN
		customers ON orders.CustomerID = customers.CustomerID
	
	WHERE orders.OrderID = num_orden;
    
END $$
DELIMITER ;


-- ejecutamos  
CALL db_tienda.mostrar_orden_datos_empleado_empresa(10258);