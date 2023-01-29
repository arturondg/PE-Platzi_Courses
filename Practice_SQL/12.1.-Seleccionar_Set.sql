--Seleccionar un grupo de opciones en particular

---Primer forma
SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id IN (1,5,10,12,15,20);


---Segunda forma
--Este query tiene un subquery el cual puede aumentar en complejidad, aún así se podría obtener el mismo resulsatdo si este mismo
SELECT *
FROM platzi.alumnos
WHERE id IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
);

--Con el siguiente sólo se obtienen las columnas especificadas
SELECT id, tutor_id
FROM platzi.alumnos
WHERE tutor_id = 30;

--El mismo query que el primero pero un poco más complejo
SELECT *
FROM platzi.alumnos
WHERE id IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
	AND carrera_id =31
);