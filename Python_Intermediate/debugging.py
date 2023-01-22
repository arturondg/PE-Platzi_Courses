def divisors(num):
    # try:
    #     if num <= 0:
    #         raise ValueError("No se pueden ingresar números negativos")
    divisors = [i for i in range (1, num + 1) if num % i == 0]
    return divisors
    # except ValueError as ve:
    #     print(ve)
    #     run()
        
        # for i in range(1, num + 1):
        #     if num % i == 0:
        #         divisors.append(i)
    


def run():
    while True:
        try:
            num = int(input("Ingresa un número: "))
            try:
                if num <= 0:
                    raise ValueError("No se pueden ingresar números negativos")
                print(divisors(num))
                print("Terminó mi programa")
                break
            except ValueError as ve:
                print(ve)
        except ValueError:
            print("Debes ingresar un número.")
    

if __name__ == '__main__':
    run()