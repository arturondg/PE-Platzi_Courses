---Diferentes formas de traer el primer registro

-- Primera
SELECT *
FROM platzi.alumnos
FETCH FIRST 1 ROWS ONLY;

--Segunda
SELECT *
FROM platzi.alumnos
LIMIT 1;

--Tercera

SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id = 1;

