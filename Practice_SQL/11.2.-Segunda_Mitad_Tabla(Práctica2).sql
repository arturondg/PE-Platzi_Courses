--Se tiene que traer la segunda mitad de la  tabla

SELECT *
FROM platzi.alumnos
OFFSET (
	SELECT COUNT(id)/2
	FROM platzi.alumnos
);


--Solución del profesor que nos muestra los números de las filas 
SELECT ROW_NUMBER() OVER() AS row_id, *
FROM platzi.alumnos
OFFSET (
	SELECT COUNT(*)/2
	FROM platzi.alumnos
); 