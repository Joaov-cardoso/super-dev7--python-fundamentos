def exemplo_strings():
    # Variáveis do tipo string
    nome_inquilino: str = "Maria"
    sobrenome_inquilino: str = "da Silva"

    # Concatenção (junta)

    nome_completo: str = nome_inquilino + " " + sobrenome_inquilino
    print(nome_completo)

# Criar outra fnção para armazenar os dados do paciente
# nome paciente
# cidade natal
# tipo sanguineo
# idade -> inteiro
# peso -> real
# altura - real

# calcular IMC
# calcular ano de nascimento
# apresentar tudo
# Nomenclaturaa de uma funçao/metodo(def) deve ser uma ação
#   exemplo: apresentar_dados_paciente

def apresentar_dados_paciente():
    nome_paciente: str = "João"
    cidade_natal: str = "Blumenau"
    tipo_sanguineo: str = "O+"
    idade: int = 25
    peso: float = 79.5
    altura: float = 1.70

    imc: float = peso / (altura * altura)

    ano_nascimento: int = 2025 - idade

    dados_completos: str = "Nome paciente: " + nome_paciente + "\nCidade Natal: " + cidade_natal + "\nTipo Sanguineo: " + tipo_sanguineo + "\nIMC: " +  str(f'{imc:.2f}') + "\nAno de nascimento: " + str(ano_nascimento)

    print(dados_completos)

def exemplo_int_float():
    salario: int = 1500
    aumento: float = 1.30

    novo_salario: float = salario * aumento

    print("Novo salário: " + str(novo_salario))

def exemplo_boolean():
    # Boolean: True(verdadeiro) ou False(falso)
    empregado: bool = True

    # Alternando o valor da variável empregado
    empregado = False

    print("Empregado: " + str(empregado))