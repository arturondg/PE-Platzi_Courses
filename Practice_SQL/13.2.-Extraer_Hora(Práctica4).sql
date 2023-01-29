--Práctica de extraer horas, minutos y segundos

---Primera forma con EXTRACT
SELECT EXTRACT(HOUR FROM fecha_incorporacion) AS hora_incorporacion
FROM platzi.alumnos;

---Segunda forma con DATE_PART

SELECT DATE_PART('HOUR',fecha_incorporacion) AS hora_incorporacion
FROM platzi.alumnos;

----Sacando hora, minutos y segundos

SELECT DATE_PART('HOUR',fecha_incorporacion) AS hora_incorporacion,
		DATE_PART('MINUTE',fecha_incorporacion) AS minuto_incorporacion,
		DATE_PART('SECOND',fecha_incorporacion) AS segundo_incorporacion
FROM platzi.alumnos;