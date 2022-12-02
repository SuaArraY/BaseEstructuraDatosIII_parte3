
-- EJERCICIO 1	
-- usar la base de datos world
USE world;

-- comprobamos que el procedimiento almacenado no exista y si existe que se modifique
DROP PROCEDURE IF EXISTS `listas_ciudades`;

-- usar la base de datos world
USE world $$

-- el procedimiento almacenado lo delimitamos
DELIMITER $$
-- creacion del procedimiento almacenado
CREATE PROCEDURE listas_ciudades ()
BEGIN
-- ingresamos la sentencia SQL 
	SELECT name FROM city;
END $$
DELIMITER ;
