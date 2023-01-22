def morral(tamano_morral, pesos, valores, n): #funcion con las variables donde agragamos la variable n la cual nos permite
    print(f'Tamaño del morral: {tamano_morral}, Peso: {pesos[n - 1]}, Valores: {valores[n - 1]}') # definir cual sera el indice en cual estamos trabajando.
    
    if n == 0 or tamano_morral == 0:       
        return 0

    if pesos[n - 1] > tamano_morral:        
        return morral(tamano_morral, pesos, valores, n -1)

    maximo = max(valores[n - 1] + morral(tamano_morral - pesos[n - 1], pesos, valores, n -1),
                morral(tamano_morral, pesos, valores, n - 1))
    print(f'Maximo valor: {maximo}')
    return maximo

if __name__ == '__main__':
    valores = [60, 100, 120]
    pesos = [10, 20, 30]
    tamano_morral = 50
    n = len(valores)

    resultado = morral(tamano_morral, pesos, valores, n)
    print(resultado)