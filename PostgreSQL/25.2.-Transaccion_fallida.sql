BEGIN;
	
INSERT INTO public.trenes(
	modelo, capacidad)
	VALUES ('Modelo Trns 2', 1234);
	
INSERT INTO public.estaciones(
	id,nombre, direccion)
	VALUES (108, 'Estacion Transac', 'dirsassdsd');	
	
COMMIT;

	
	