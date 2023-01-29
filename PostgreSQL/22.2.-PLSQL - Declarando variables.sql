DO $$
DECLARE
	rec record;
BEGIN
	FOR rec IN SELECT * FROM pasajeros LOOP
 RAISE NOTICE 'Un pasajero se llama %', rec.nombre;
 END LOOP;
END
$$ 