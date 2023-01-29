BEGIN;
INSERT INTO public.estaciones(
	nombre, direccion)
	VALUES ('Estacion Transac', 'dirsassdsd');
	
INSERT INTO public.trenes(
	modelo, capacidad)
	VALUES ('Modelo Trns', 123);
	
COMMIT;

	
	