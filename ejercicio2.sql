-- EJERCICIO 2:

-- crear el procedimiento para listar la ciudad pasandole el nombre de la ciudad

-- usar la base de datos world
USE world;
DROP PROCEDURE IF EXISTS `buscar_pais_nombre`;
USE world $$
DELIMITER $$
CREATE PROCEDURE `buscar_pais_nombre`(IN nombre_pais varchar(150))
BEGIN
SELECT name AS `Nombre Pais` FROM country WHERE Name = nombre_pais;
END $$
DELIMITER ;