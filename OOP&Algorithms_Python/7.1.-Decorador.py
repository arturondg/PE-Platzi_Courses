def funcion_decoradora(funcion):
	def wrapper():
		print("Este es el último mensaje...")
		funcion()
		print("Este es el primer mensaje ;)")
	return wrapper

def zumbido():
	print("Buzzzzzz")

zumbido = funcion_decoradora(zumbido)

# >>> zumbido()
# Este es el último mensaje...
# Buzzzzzz
# Este es el primer mensaje ;)