--Generar un triángulo con rangos
---Forma 1 (Propia)
SELECT lpad('>',generate_series(1,20),'<')


---Forma 2 (externa)
SELECT lpad('\', id, '/') 
FROM generate_series(1,50) as id


---Forma 3(Profesor)
--ordinality ordena de menor a mayor
SELECT lpad('*', CAST (ordinality AS int), '*')
FROM generate_series(100,2,-2) WITH ordinality