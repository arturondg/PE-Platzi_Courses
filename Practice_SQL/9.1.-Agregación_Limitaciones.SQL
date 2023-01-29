-- Seleccionará los alumnos desde al id 400, y serán 100
SELECT id, nombre, apellido, colegiatura
FROM platzi.alumnos
OFFSET 400
LIMIT 100;