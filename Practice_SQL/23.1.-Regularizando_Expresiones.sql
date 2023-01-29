--Expresiones regulares

--- Nos trae todos los correos
SELECT email
FROM platzi.alumnos
WHERE email ~*'[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}'; --Esta expresion, nos ayuda a verificar correos

---Nos muestra sólo los correos de dominio google
SELECT email
FROM platzi.alumnos
WHERE email ~*'[A-Z0-9._%+-]+@google[A-Z0-9.-]+\.[A-Z]{2,4}';