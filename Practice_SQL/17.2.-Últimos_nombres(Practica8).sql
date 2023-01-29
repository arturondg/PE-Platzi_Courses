-- Sacar el último nombre alfabéticamente

---Primera forma
--Este saca sólamente el último nombre
SELECT nombre
FROM platzi.alumnos
ORDER BY nombre DESC
LIMIT 1;

---Segunda forma
--Nos traera los primeros nombres 
SELECT tutor_id, MIN(nombre)
FROM platzi.alumnos
GROUP BY tutor_id 
ORDER BY tutor_id;