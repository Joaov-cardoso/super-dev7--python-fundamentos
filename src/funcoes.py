def funcao_sem_retorno():
    print("Olá mundo")


def funcao_com_retorno() -> str:
    produto : str = "iPhone 17 Pro Max"
    return produto


def funcao_executar():
    funcao_sem_retorno()

    nome = funcao_com_retorno()
    print("Nome do produto: " + nome)


def solicitar_nome_jogo() -> str:
    nome : str = input("Digite o nome do jogo: ").strip()
    return nome


def solicitar_preco_jogo() -> float:
    preco : float = float(input("Digite o preço: "))
    return preco


def solicitar_quantidade_jogo() -> int:
    quantidade : int = int(input("Digite a quantidade: "))
    return quantidade


def solicitar_pedido_fechado() -> bool:
    pedido_fechado : str = input("Pedido fechado (s/n): ").strip().lower()
    if pedido_fechado == "s":
        return True
    else:
        return False


def solicitar_valor_pagamento():
    valor_pagamento : float = float(input("Digite o valor pago: "))
    return valor_pagamento


def processar_pedido():
    nome : str = solicitar_nome_jogo()
    preco : float = solicitar_preco_jogo()
    quantidade : int = solicitar_quantidade_jogo()
    pedido_fechado: bool = solicitar_pedido_fechado()

    valor_pedido : float = quantidade * preco
    print("\n\nValor pedido: " + str(valor_pedido))

    if pedido_fechado == True:
        valor_pagamento = solicitar_valor_pagamento()
        if valor_pagamento > valor_pedido:
            valor_troco = valor_pagamento - valor_pedido
            print("Troco: " + str(valor_troco))
            print("Status: Pedido realizado")
        elif valor_pagamento == valor_pedido:
            print("Pedido sem troco")
            print("Status: Pedido realizado")
        else:
            valor_faltante = valor_pedido - valor_pagamento
            print("Valor faltante: " + str(valor_faltante))
            print("Status: Pedido cancelado")


def solicitar_cotacao_dolar() -> float:
    cotacao : float = float(input("Digite o valor da cotação do dolar hoje: ").replace(",", "."))
    return cotacao


def solicitar_nome_produto() -> str:
    nome = input("Digite o nome do produto: ")
    return nome


def solicitar_valor_produto_dolar() -> float:
    valor_produto : float = float(input("Digite o valor do produto em dolar: ").replace(",", "."))
    return valor_produto


def solicitar_se_paraga_imposto() -> bool:
    considerar_imposto : str = input("Pagará o imposto? (s/n): ").strip().lower()
    if considerar_imposto == "s":
        return True
    else: 
        return False


def solicitar_deseja_utilizar_cota_dolar_mensal() -> bool:
    cota_dolar_mensal : str = input("Considerar a cota mensal de $ 500 de isenção? (s/n): ").strip().lower()
    if cota_dolar_mensal == "s":
        return True
    else: 
        return False

def calcular_valor_produto_acrescentando_imposto_utilizando_cota(
    valor_produto_dolar: float,
    cotacao_dolar: float,
    valor_produto_reais: float
): 
    cotacao_mensal = 500.00

    valor_imposto_dolar = (valor_produto_dolar - cotacao_mensal) / 2
    valor_imposto_reais = valor_imposto_dolar * cotacao_dolar

    valor_total_produto_reais = valor_produto_reais + valor_imposto_reais
    print(f"""Valor total do produto com impostos: $ {valor_total_produto_reais}
Valor total do produto: R$ {valor_imposto_reais}
Valor imposto: R$ {valor_imposto_reais} 

Valor total do produto com impostos: R$ {valor_total_produto_reais}""")
    

def calcular_valor_produto_acrescentando_imposto(
    valor_produto_dolar: float,
    cotacao_dolar: float,
    valor_produto_reais: float  
):
    valor_imposto_dolar = valor_produto_dolar / 2
    valor_imposto_reais = valor_imposto_dolar * cotacao_dolar

    valor_total_produto_reais = valor_produto_reais + valor_imposto_reais
    print("Valor total do produto com impostos: " + str(valor_total_produto_reais))


def calcular_valor_compra_paraguai():
    cotacao_dolar : float = solicitar_cotacao_dolar()
    nome_produto: str = solicitar_nome_produto()
    valor_produto_dolar: float = solicitar_valor_produto_dolar()
    pagara_imposto: bool = solicitar_se_paraga_imposto()
    #calcular o valor do produto em reais
    valor_produto_reais = valor_produto_dolar * cotacao_dolar
    if pagara_imposto == True:
        utilizar_cota_dolar_mensal = solicitar_deseja_utilizar_cota_dolar_mensal()

        if utilizar_cota_dolar_mensal == True:
            calcular_valor_produto_acrescentando_imposto_utilizando_cota(
                valor_produto_dolar, cotacao_dolar, valor_produto_reais
            )
        else:
            calcular_valor_produto_acrescentando_imposto(
                valor_produto_dolar, cotacao_dolar, valor_produto_reais
            )
    else:
        print("Valor do protudo sem pagar imposto: " + str(valor_produto_reais))

# Ex.1 : Criar uma função chamada exercicio_aluno
# Solicitar o nome (criar funcao)
# Solicitar nota 1 (criar funcao)
# Solicitar nota 2 (criar funcao)
# Solicitar nota 3 (criar funcao)
# Calcular a media e apresentar
# Criar um if que verifique se o aluno está ou nao aprovado e apresentar

# Solicitar a idade (criar funcao)
# Solicitar o peso (criar funcao)
# Solicitar a altura (criar funcao)
# Calcular o imc do aluno e apresentar a classificacao
# Apresentar a geracao de acordo com a idade
# Solicitar o cargo (criar funcao)
# Apresentar o salario de acordo com cargo
#   Estagiário R$ 850,00
#   Junior R$ 1800,00
#   Pleno R$ 4000,00
#   Senior R$ 6000,00


def solicitar_nome_aluno() -> str:
    nome = input("Digite o nome do aluno: ")
    return nome


def solicitar_nota_1() -> float:
    nota_1 = float(input("Digite a nota 1: "))
    return nota_1


def solicitar_nota_2() -> float:
    nota_2 = float(input("Digite a nota 2: "))
    return nota_2


def solicitar_nota_3() -> float:
    nota_3 = float(input("Digite a nota 3: "))
    return nota_3

def solicitar_idade() -> int:
    idade: int = int(input("Digite a idade do aluno: "))
    return idade


def solicitar_peso() -> float:
    peso: float = float(input("Digite o peso do aluno: ").replace(",", "."))
    return peso


def solicitar_altura() -> float:
    altura: float = float(input("Digite a altura do aluno: ").replace(",", "."))
    return altura


def solicitar_cargo() -> str:
    cargo = input("Digite o cargo do aluno (Estágiario, Junior, Pleno, Senior): ").lower()
    return cargo


def exercicio_aluno():
    nome: str = solicitar_nome_aluno()
    nota1: float = solicitar_nota_1()
    nota2: float = solicitar_nota_2()
    nota3: float = solicitar_nota_3()
    media: float = (nota1 + nota2 + nota3) / 3
    idade: int = solicitar_idade()
    ano_nascimento: int = 2025 - idade
    peso: float = solicitar_peso()
    altura: float = solicitar_altura()
    imc: float = peso / (altura * altura)
    cargo: str = solicitar_cargo()

    #calcula status aprovado ou n
    if media >= 7:
        status = "Aprovado"
    else:
        status = "Reprovado"

    # validar geracao idade
    if ano_nascimento > 1946 and ano_nascimento <= 1964:
        geracao = "Baby Boomer"
    elif ano_nascimento >= 1965 and ano_nascimento <= 1980:
        geracao = "Geração X"
    elif ano_nascimento >= 1981 and ano_nascimento <= 1996:
        geracao = "Geração Y (Millennials)"
    elif ano_nascimento >= 1997 and ano_nascimento <= 2012:
        geracao = "Geração Z"
    else:
        geracao = "Geração Alfa"

    # verificar salario
    if cargo == "estagiario":
        salario = "R$850,00"
    elif cargo == "junior":
        salario = "R$1800,00"
    elif cargo == "pleno":
        salario = "R$4000,00"
    elif cargo == "senior":
        salario = "R$6000,00"

    # categoria imc
    if imc < 18.5:
        categoria_imc = "Abaixo do peso"
    elif imc >= 18.5 and imc <= 24.9:
        categoria_imc = "Peso Normal"
    elif imc >= 25 and imc <= 29.9:
        categoria_imc= "Excesso de peso"
    elif imc >= 30 and imc <= 34.9:
        categoria_imc = "Obecidade classe I"
    elif imc >= 35 and imc <= 39.9:
            categoria_imc = "Obecidade classe II"
    elif imc > 40:
            categoria_imc = "Obecidade classe III"

    print(f"""Nome: {nome}
Nota 1: {nota1}
Nota 2: {nota2}
Nota 3: {nota3}
Média: {media}
          
Situação aluno: {status}



""")