def run():
    squares = []
    for accountant in range(1, 101):
        squares.append(accountant * accountant)
        
    print(squares)


if __name__ == '__main__':
    run()