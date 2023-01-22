from time import process_time_ns


estudiantes = {
    'mexico': 10,
    'colombia': 15,
    'puerto_rico': 4,
}

for pais in estudiantes:
    print(pais)

for pais2 in estudiantes.keys():
    print(pais2)

for numero_de_estudiantes in estudiantes.values():
    print(numero_de_estudiantes)

for pais3, numero_de_estudiantes2 in estudiantes.items():
    print([pais3,numero_de_estudiantes2])