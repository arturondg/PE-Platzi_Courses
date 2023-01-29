-- Extraer por año


---Primera forma (EXTRACT)
--Se extrae un año específico como si fuera una condición
SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2019;

---Segunda forma(DATE_PART)
SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion) = 2019)

---Tercera forma (con subquery)
--Se puede hacer más de un filtro
SELECT *
FROM(
	SELECT*,
		DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_anio
WHERE anio_incorporacion = 2020;