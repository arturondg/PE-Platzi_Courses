-- Este trae todos los alumnos con iniciales "ar" en su nombre y "m" en su apellido sin importar las mayúsculas o minúsculas
SELECT nombre, apellido 
FROM platzi.alumnos 
WHERE nombre ILIKE 'ar%' and apellido ILIKE 'M%';