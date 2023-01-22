def presentarse(nombre):
	return f"Me llamo {nombre}"


def estudiemos_juntos(nombre):
	return f"¡Hey {nombre}, aprendamos Python!"


def consume_funciones(funcion_entrante):
	return funcion_entrante("David")


print(consume_funciones(presentarse))
# 'Me llamo David'

print(consume_funciones(estudiemos_juntos))
# '¡Hey David, aprendamos Python!'