def character_count(func):
    def count(*args, **kwargs):
        func(*args, **kwargs)
        contador = len(*args, **kwargs)
        print(f'La palabra anterior tiene {contador} letras')
    return count

def run():
    @character_count
    def strings(string):
        print (f'Nombre solicitado: {string}')

    print(strings('Arturo'))

if __name__ == '__main__':
    run()