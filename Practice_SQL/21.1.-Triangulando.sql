-- Triangulando

---lpad
-- Lo que hace lpad, es rellenar con lo que se indique a la izquiera, y cuanto se indique
SELECT lpad('sql',15,'*');

>>> ************sql

--- Este dara una lista en la que se van presentando caracteres gradualmente
SELECT lpad('sql',id,'*')
FROM platzi.alumnos
WHERE id < 10;

---Este hace el triángulo
SELECT lpad('*',id,'*')
FROM platzi.alumnos
WHERE id < 10;


---Desordena el triangulo si le agregamos una condicion
SELECT lpad('*',id,'*')
FROM platzi.alumnos
WHERE id < 10
ORDER BY carrera_id;


---Con la particion, se vuelve a ordenar
SELECT lpad('*', CAST(row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5


---Si la ordenamos se vuelve a desacomodar
SELECT lpad('*', CAST(row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5
ORDER BY carrera_id;


---Y con un order by dentro del over, se vuelve a ordenar
SELECT lpad('*', CAST(row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER(ORDER BY carrera_id) AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5
ORDER BY carrera_id;