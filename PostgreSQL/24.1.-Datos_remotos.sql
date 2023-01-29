--CREATE EXTENSION dblink;


SELECT * FROM
dblink ('dbname=remota 
	   port=5432 
	   host=127.0.0.1 
	   user=postgres
	   password=w2948j3y1nk',
	  'SELECT id, fecha FROM vip')
	  AS datos_remotos(id integer, fecha date);