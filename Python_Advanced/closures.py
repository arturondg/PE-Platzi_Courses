# Hola 3 -> HolaHolaHola
# Arturo 2 -> ArturoArturo
# Platzi 4 -> PlatziPlatziPlatziPlatzi

def make_repeater_of(n):
    def repeater(string):
        assert type(string) == str, "Solo puedes utilizar cadenas"
        return string * n
    return repeater


def run():
    repear_5 = make_repeater_of(5)
    print(repear_5("Hola"))
    repear_10 = make_repeater_of(10)
    print(repear_10("Platzi"))

if __name__ == '__main__':
    run()