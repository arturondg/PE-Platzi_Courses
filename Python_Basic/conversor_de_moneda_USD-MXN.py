dolares = input("¿Cuántos dólares tienes?: ")
dolares = float(dolares)
divisa = 0.049
pesos_mexicanos = dolares / divisa
pesos_mexicanos = round(pesos_mexicanos,2)
pesos_mexicanos = str(pesos_mexicanos)
print("Tienes $" + pesos_mexicanos + "pesos mexicanos")