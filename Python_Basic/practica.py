
def run():
    # limite_del_usuario = int(input('Ingresa un número límite de la multiplicación menor a 1,000: '))
    LIMITE = 1000

    contador = 1
    resultado = 15 * contador
    
    while resultado <= LIMITE:
        print("Todos los números divisores de 15 son: " + str(resultado))
        contador += 1
        resultado = 15 * contador
        # print ('El número anterior es par')
        # if limite_del_usuario < 1000:
        #     continue
        # if resultado > limite_del_usuario:
        #     break
        # print('Limite marcado')


if __name__ == '__main__':
    run()