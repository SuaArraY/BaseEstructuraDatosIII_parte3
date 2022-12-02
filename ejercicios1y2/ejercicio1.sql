
-- EJERCICIO 1:
-- crear procedimiento para listar las ciudades:
USE world ;
DROP PROCEDURE IF EXISTS `listas_ciudades`;
DELIMITER $$
USE world $$
CREATE PROCEDURE listas_ciudades ()
BEGIN 
	SELECT name FROM city;
END $$
DELIMITER ;


