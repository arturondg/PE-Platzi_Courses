
class Rectangulo:

    def __init__(self, base, altura):
        self.base = base 
        self.altura = altura

    def area(self):
        return self.base * self.altura

#Se lee: La clase rectángulo extiende al cuadrado
class Cuadrado(Rectangulo):

    def __init__(self, lado):
        super().__init__(lado, lado)


if __name__ == '__main__':
    rectangulo = Rectangulo(base=3, altura=4)
    print(rectangulo.area())

    cuadrado = Cuadrado(lado=5)
    print (cuadrado.area())