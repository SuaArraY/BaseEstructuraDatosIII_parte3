-- EJERCICIO 2:

-- crear el procedimiento para listar la ciudad pasandole el nombre de la ciudad

-- usar la base de datos world
USE world;

-- comprobamos que el procedimiento almacenado no exista y si existe que se modifique
DROP PROCEDURE IF EXISTS `buscar_pais_nombre`;

-- usar la base de datos world
USE world $$

-- el procedimiento almacenado lo delimitamos
DELIMITER $$
-- creacion del procedimiento almacenado, que acepte un parametro
CREATE PROCEDURE `buscar_pais_nombre`(IN nombre_pais varchar(150))
BEGIN
-- ingresamos la sentencia SQL y si aceptamos variables lo ingresamos
SELECT name AS `Nombre Pais` FROM country WHERE Name = nombre_pais;
END $$
DELIMITER ;