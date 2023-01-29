-- Traer a todos los elementos, alumnos sin carreras, y carreras sin alumnos
SELECT  a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
	FROM platzi.alumnos AS a
	FULL OUTER JOIN platzi.carreras AS c 
	ON a.carrera_id = c.id
ORDER BY a.carrera_id;
