from datetime import date
from typing import List
from rich.table import Table
from rich.console import Console
from rich.align import Align

# class Cachorro:
#     def __init__(self, raca: str, peso: float, idade: int, cor: str = "Caramelo"):
#         # Atributos sao preenchidos com dados dos parametros
#         #O parametro cor tem um valor defaut(padrao) que é caramelo
#         self.raca = raca
#         self.peso = peso
#         self.idade = idade
#         self.cor = cor
#         # Atributo pre definido
#         self.cidade_natal = "Blumenau"


# def exemplo_construtor_cachorro():
#     #Cachorro(raca, peso, idade)
#     tobby = Cachorro("Dobbermann", 40.20, 15, "Preto")
#     print(tobby.raca)
#     print(tobby.peso)
#     print(tobby.idade)
#     print(tobby.cidade_natal)
#     print(tobby.cor)

#     daschund = Cachorro("Salsicha", 70.00, 5)
#     print("raça: ", daschund.raca)
#     print("peso: ", daschund.peso)
#     print("idade: ", daschund.idade)
#     print("cidade natal : ", daschund.cidade_natal)
#     print("cor: ", daschund.cor)


#exemplo_construtor_cachorro()

class Passagem:
    def __init__(self, destino: str, quantidade_dias: int, data_inicio: str, quantidade_pessoas: int = 2, partida: str = "São Paulo"):
        self.destino = destino
        self.quantidade_dias = quantidade_dias
        self.data_inicio = data_inicio
        self.quantidade_pessoas = quantidade_pessoas
        self.partida = partida  

def instanciar_destinos():
    primeiro_destino = Passagem("Blumenau", 2, "10/10/2025")
    segundo_destino = Passagem("Gaspar", 18, "28/10/2025")
    terceiro_destino = Passagem("Rio de Janeiro", 15, "31/10/2027", 300)
    quarto_destino = Passagem("Roraima", 18, "28/12/2025", 100, "Navegantes")

    colunas = ["Destino", "Qtd Dias", "Data Início", "Pessoas", "Partida"]

    tabela= Table(*colunas)

    tabela.add_row(primeiro_destino.destino,str(primeiro_destino.quantidade_dias),primeiro_destino.data_inicio,str(primeiro_destino.quantidade_pessoas),primeiro_destino.partida)
    tabela.add_row(segundo_destino.destino,str(segundo_destino.quantidade_dias),segundo_destino.data_inicio,str(segundo_destino.quantidade_pessoas),segundo_destino.partida)
    tabela.add_row(terceiro_destino.destino,str(terceiro_destino.quantidade_dias),terceiro_destino.data_inicio,str(terceiro_destino.quantidade_pessoas),terceiro_destino.partida)
    tabela.add_row(quarto_destino.destino,str(quarto_destino.quantidade_dias),quarto_destino.data_inicio,str(quarto_destino.quantidade_pessoas),quarto_destino.partida)

    console = Console()
    console.print(Align.center(tabela))


instanciar_destinos()
