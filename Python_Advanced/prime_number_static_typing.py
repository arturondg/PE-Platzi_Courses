def is_prime(number: int) -> bool:
    contador = 0

    for i in range(1, number + 1):
        if i == 1 or i == number :
            continue
        if number % i == 0:
            contador += 1
    return contador == 0



def run():
    print(is_prime(4))


if __name__ == '__main__':
    run()