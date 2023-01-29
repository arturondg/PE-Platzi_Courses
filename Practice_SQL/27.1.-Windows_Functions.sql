

---Saca promedios, y ordena por carreras 
--Si no se especica un PARTITION BY, la función OVER tomarás toda la tabla
--Dentro de over se realiza la window function
SELECT *,
		AVG(colegiatura) OVER(PARTITION BY carrera_id)
FROM platzi.alumnos;


--Cuando se agrega ORDER BY, se suman todas las colegiatura iguales
SELECT *,
		SUM(colegiatura) OVER(ORDER BY colegiatura)
FROM platzi.alumnos;

--Va sumando tuplas, y cuando se suman iguales, se suman en conjunto
SELECT *,
		SUM(colegiatura) OVER(PARTITION BY carrera_id ORDER BY colegiatura)
FROM platzi.alumnos;

--Ordena el ranking según el id
SELECT *,
		RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS brand_rank
FROM platzi.alumnos
ORDER BY carrera_id, brand_rank

--- Elegir branrank menor a uno, la window function se debe poner dentro de un subquery parap poder hacher WHERE
SELECT *
FROM (
		SELECT *,
		RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS brand_rank
		FROM platzi.alumnos
) AS ranked_colegiatura_por_carrera
WHERE brand_rank < 3
ORDER BY brand_rank