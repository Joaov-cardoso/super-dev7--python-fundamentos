def solicitar_string():
    nome: str = input("Digite o nome: ")
    print("Nome digitado: " + nome)

def solicitar_float():
    nota1: float = float(input("Digite a nota 1: "))
    print("Nota 1 digitada: " + str(nota1))

def solicitar_int():
    numero1: int = int(input("Digite o numero 1: "))
    numero2: int = int(input("Digite o numero 2: "))
    soma = numero1 + numero2
    print("Soma: " + str(soma))