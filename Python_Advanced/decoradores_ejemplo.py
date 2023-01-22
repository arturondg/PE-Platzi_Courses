def mayusculas(func):
    def envoltura(texto):
        return func(texto).upper()
    return envoltura


def run():
    @mayusculas
    def mensaje(nombre):
        return f'{nombre}, recibiste un mensaje'

    print(mensaje('Arturo'))
if __name__ == '__main__':
    run()