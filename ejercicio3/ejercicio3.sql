-- EJERCICIO 3
-- Desarrolle un procedimiento almacenado para mostrar el nombre de un pais, su ciudad y su idioma

-- usar la base de datos world
USE world;

-- comprobamos que el procedimiento almacenado no exista y si existe que se modifique
DROP PROCEDURE IF EXISTS `mostrar_pais_ciudad_idioma`;

-- usar la base de datos world
USE world $$

-- el procedimiento almacenado lo delimitamos
DELIMITER $$
-- creacion del procedimiento almacenado, que acepte un parametro
CREATE PROCEDURE `mostrar_pais_ciudad_idioma`()
BEGIN
-- ingresamos la sentencia SQL 
	SELECT  country.name as pais, city.name AS ciudad,  countrylanguage.language as idioma
    FROM city 
    INNER JOIN 
		country on city.CountryCode = country.Code 
    INNER JOIN
		countrylanguage ON country.Code= countrylanguage.CountryCode;  
    
END $$
DELIMITER ;
