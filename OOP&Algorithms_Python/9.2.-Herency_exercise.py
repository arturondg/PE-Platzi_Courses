
class Pizzas:

    def __init__(self, Ingrediente_1, Ingrediente_2, Ingrediente_3):
        self.Ingrediente_1 = Ingrediente_1
        self.Ingrediente_2 = Ingrediente_2
        self.Ingrediente_3 = Ingrediente_3

    def agregarIngredientes(self):
        
        return f'La pizza lleva {self.Ingrediente_1}, {self.Ingrediente_2} y {self.Ingrediente_3}'

class PizzaHawaianna(Pizzas):
    def __init__(self, Ingrediente_1='jamón', Ingrediente_2='Piña', Ingrediente_3='Jalapeño'):
        super().__init__(Ingrediente_1, Ingrediente_2, Ingrediente_3)

class PizzaCarnesFrias(Pizzas):
    def __init__(self, Ingrediente_1='peperoni', Ingrediente_2='Salamí', Ingrediente_3='Jamón'):
        super().__init__(Ingrediente_1, Ingrediente_2, Ingrediente_3) 


if __name__ == '__main__':

    pizzaOriginal = Pizzas('peperoni', 'champiñon', 'pimiento')
    pizzaHawainna = PizzaHawaianna()
    pizzaCarnesFrias = PizzaCarnesFrias()

    print(pizzaOriginal.agregarIngredientes())
    print(pizzaHawainna.agregarIngredientes())
    print(pizzaCarnesFrias.agregarIngredientes())



