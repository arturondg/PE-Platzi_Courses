---Traer los primeros 5 registros

--Primera forma
SELECT * 
FROM platzi.alumnos
FETCH FIRST 5 ROWS ONLY;

--Segunda forma
SELECT * 
FROM platzi.alumnos
LIMIT 5;

--Tercera forma 
SELECT * 
FROM (
	SELECT ROW_NUMBER() OVER()  AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id < 6;

--Cuarta forma 
SELECT * 
FROM (
	SELECT ROW_NUMBER() OVER()  AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id BETWEEN 1 AND 5;