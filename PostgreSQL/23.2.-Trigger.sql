-- FUNCTION: public.impl()

-- DROP FUNCTION IF EXISTS public.impl();

CREATE OR REPLACE FUNCTION public.impl(
	)
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
	rec record;
	contador integer :=0;
BEGIN
 FOR rec IN SELECT * FROM pasajeros LOOP
	 contador:= contador +1;
 END LOOP;
 INSERT INTO cont_pasajeros (total, tiempo)
 VALUES (contador, now());
END
$BODY$;


