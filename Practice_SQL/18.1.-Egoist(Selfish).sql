--Selfish

---Selfjoin, hacer un join con datos de la misma tabla
SELECT  a.nombre,
		a.apellido,
		t.nombre,
		t.apellido
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id;

----Se puede concatena el query anterior
SELECT  CONCAT(a.nombre,' ',a.apellido) AS alumno,
		CONCAT(t.nombre,' ',t.apellido) AS tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id;


--- Este query lo que hace es decirnos cuantos alumnos hay por tutor, y ordenarlos de mayor a menor, con un selfjoin
SELECT  CONCAT(t.nombre,' ',t.apellido) AS tutor,
		COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC;

----Se saca el top 10 sólo agregando limit
SELECT  CONCAT(t.nombre,' ',t.apellido) AS tutor,
		COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC
LIMIT 10;