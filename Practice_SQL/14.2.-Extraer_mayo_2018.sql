--Se extrae con este query, el año y el mes del 2018

---Primera forma con EXTRACT sin subquery
SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2018
AND (EXTRACT(MONTH FROM fecha_incorporacion)) = 5;



---Segunda forma con subquery
SELECT *
FROM(
	SELECT*,
		DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion,
		DATE_PART('MONTH',fecha_incorporacion) AS mes_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_anio_mes
WHERE anio_incorporacion = 2018
	AND mes_incorporacion = 5;