
---row number siempre va en una serir a menos que lo indiquemos
SELECT ROW_NUMBER() OVER(ORDER BY fecha_incorporacion) AS row_id, *
FROM platzi.alumnos

---nos pondrá en el row_id el primer valor de cafa  colegiatura de carrera_id
SELECT FIRST_VALUE(colegiatura) OVER(PARTITION BY carrera_id) AS row_id, *
FROM platzi.alumnos

---nos pondrá en el row_id el último valor de cafa  colegiatura de carrera_id
SELECT LAST_VALUE(colegiatura) OVER(PARTITION BY carrera_id) AS row_id, *
FROM platzi.alumnos

---nos pondrá en el row_id el tercer valor de cafa  colegiatura de carrera_id
SELECT NTH_VALUE(colegiatura,3) OVER(PARTITION BY carrera_id) AS ultima_colegiatura, *
FROM platzi.alumnos


SELECT *, 
		RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos
ORDER BY carrera_id, colegiatura_rank


SELECT *, 
		DENSE_RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos
ORDER BY carrera_id, colegiatura_rank


SELECT *, 
		PERCENT_RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos
ORDER BY carrera_id, colegiatura_rank