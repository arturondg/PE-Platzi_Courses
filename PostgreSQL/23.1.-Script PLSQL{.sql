-- FUNCTION: public.importantePL()

-- DROP FUNCTION IF EXISTS public."importantePL"();

CREATE OR REPLACE FUNCTION public."importantePL"(
	)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
	rec record;
	contador integer :=0;
BEGIN
 FOR rec IN SELECT * FROM pasajeros LOOP
	 RAISE NOTICE 'Un pasajero se llama %', rec.nombre;
	 contador:= contador +1;
 END LOOP;
 RAISE NOTICE 'Conteo es %', contador;
 RETURN contador;
END
$BODY$;

ALTER FUNCTION public."importantePL"()
    OWNER TO postgres;
