-- En mis tiempos(Extraer tiempos específicos)

---Extraer el año de una fecha

----Primera forma
SELECT EXTRACT(YEAR FROM fecha_incorporacion) AS anio_incorporacion
FROM platzi.alumnos;

----Segunda forma
SELECT DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion
FROM platzi.alumnos

----Sacar toda la fecha(la saca en diferentes columnas)
SELECT DATE_PART('YEAR',fecha_incorporacion) AS anio_incorporacion,
		DATE_PART('MONTH',fecha_incorporacion) AS mes_incorporacion,
		DATE_PART('DAY',fecha_incorporacion) AS dia_incorporacion
FROM platzi.alumnos;