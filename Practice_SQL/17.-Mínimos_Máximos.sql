--Traer los mínimos y máximos

---Primera forma
--Lo que hace es traer la fecha más reciente, a traves del Order By, y un límite
SELECT fecha_incorporacion
FROM platzi.alumnos
ORDER BY fecha_incorporacion DESC
LIMIT 1; --Lo malo de este método, es que no pueden hacer más filtros, cómo sacar máximos por carrera o tutor.

---Segunda forma
--Este query nos trae la fecha más reciente de cada carrera
SELECT carrera_id, MAX(fecha_incorporacion)
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id;