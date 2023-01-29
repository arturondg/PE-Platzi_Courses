-- Traer segunda colegiatura más alta

---Primera forma
SELECT DISTINCT colegiatura
FROM platzi.alumnos AS a1
WHERE 2 = (
	SELECT COUNT(DISTINCT colegiatura)
	FROM platzi.alumnos a2
	WHERE a1.colegiatura <= a2.colegiatura
);


--- Segunda forma
SELECT DISTINCT colegiatura
FROM platzi.alumnos
ORDER BY colegiatura DESC
OFFSET 1
LIMIT 1;

---- Forma para sacar en un tutor específico y que nos muestre cual es su segunda colegiatura más alta
SELECT DISTINCT colegiatura, tutor_id
FROM platzi.alumnos
WHERE tutor_id = 20
ORDER BY colegiatura DESC
OFFSET 1
LIMIT 1;


--- Tercer Forma
--Aqui hacemos uno unión con un subquery, en el que mostramos todos los alumnos con la segunda colegiatura más alta
SELECT *
FROM platzi.alumnos AS datos_alumnos
INNER JOIN (
	SELECT DISTINCT colegiatura
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
) AS segunda_mayor_colegiatura
ON datos_alumnos.colegiatura = segunda_mayor_colegiatura.colegiatura;


----Cuarta forma 
--También se muestran los alumnos con la colegiatura más alta, parecido a un filtro
SELECT *
FROM platzi.alumnos AS datos_alumnos
WHERE colegiatura = (
	SELECT DISTINCT colegiatura
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
);

