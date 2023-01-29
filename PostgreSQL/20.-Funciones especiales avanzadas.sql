SELECT id, nombre, direccion_residencia, fecha_nacimiento,
CASE 
WHEN fecha_nacimiento > '2004-04-21' THEN
'Menor de edad'
ELSE
'Mayor de edad'
END,
CASE
WHEN nombre ILIKE 'a%' THEN 'comienza con A' END
	FROM public.pasajeros;
 