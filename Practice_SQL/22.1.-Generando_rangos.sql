--Generando Rangos

---Genera una serie
SELECT *
FROM generate_series(1,4);

--- Genera una serie en reversa
SELECT *
FROM generate_series(5,1, -2);

---También se puede utilizar con decimales
SELECT *
FROM generate_series(1.1,4,1.3);

---Hacer series de tiempo, con la fecha actual, una y dos semanas después
SELECT current_date + s.a AS dates
FROM generate_series(0,14,7) AS s(a)


---Genera una lista de tiempos, saltando 10 horas
--(::) este signo específica cómo queremos que sea tratado el dato
SELECT *
FROM generate_series('2020-09-01 00:00:00'::timestamp,
					'2020-09-04 12:00:00','10 hours')

---Genera un join con rangos
SELECT  a.id,
		a.nombre,
		a.apellido,
		a.carrera_id,
		s.a
FROM platzi.alumnos AS a
	JOIN generate_series(0,10) AS s(a)
	ON s.a = a.carrera_id
ORDER BY a.carrera_id;