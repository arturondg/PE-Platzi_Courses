def aplicar_operaciones(num):
    operaciones = [abs, float]

    resultado = []
    for operacion in operaciones:
        resultado.append(operacion(num))

    return resultado

print(aplicar_operaciones(-2))

# Resultado
# [2, -2.0]