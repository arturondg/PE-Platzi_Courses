CREATE FUNCTION importantePL()
 RETURNS void
AS $$
DECLARE
	rec record;
	contador integer :=0;
BEGIN
 FOR rec IN SELECT * FROM pasajeros LOOP
	 RAISE NOTICE 'Un pasajero se llama %', rec.nombre;
	 contador:= contador +1;
 END LOOP;
 RAISE NOTICE 'Conteo es %', contador;
END
$$ 
LANGUAGE PLPGSQL;

SELECT importantePL();