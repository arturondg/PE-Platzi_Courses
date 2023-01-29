-- Funciones con rangos

--- Primera función
--Selección de rango común, indicando con exactitud cual
SELECT * 
FROM platzi.alumnos
WHERE tutor_id IN (1,2,3,4);

--- Segunda función
-- Igual común, pero estas es con condiciones
SELECT *
FROM platzi.alumnos
WHERE tutor_id >= 1
	AND tutor_id <= 10

---Tercera función
-- Esta funcion nos genera un rango, y nos verifica si hay algún número específico -- Nos delvuleve un booleano
SELECT int4range(10,20) @> 3;

---Cuarta función
-- Esta operación nos arroja un booleano, en caso de que estos rangos se crucen, nos da True
SELECT numrange(11.1, 22.2) && numrange(20.0, 30.0)


---Quinta función
-- UPPER nos devulve el valor más alto de un rango
SELECT UPPER(int8range(15,25));

---Sexta función
-- Esta operación, nos devuelve una intersección
SELECT int4range(10,20) * int4range(15,25);
-- (15,20)

---Séptima función
-- Nos dice si hay un espacion vacín dentro del rango
SELECT ISEMPTY(numrange(1,5));

--- Ejemplo
-- Nos trae los valores que estén dentro del rango
SELECT *
FROM platzi.alumnos
WHERE int4range(10,20) @>tutor_id;