
--- Hacemos una cuenta de alumnos por carrera, del mayor al menor
SELECT carrera_id, COUNT(*) AS cuenta
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY cuenta DESC


---Borra los id del 30 al 40, regresa 11
DELETE FROM platzi.carreras
WHERE id BETWEEN 30 AND 40;

---Left Join Exclusive
---Nos trae alumnos de los que sus carreras fueron borradas
SELECT  a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
	FROM platzi.alumnos AS a
	LEFT JOIN platzi.carreras AS c 
	ON a.carrera_id = c.id
WHERE c.id IS NULL 
ORDER BY a.carrera_id;