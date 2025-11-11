from typing import Dict, List
from src.arquivos import ler_json, escrever_json
from rich.console import Console
from rich.table import Table

def resolver():
    # Pegar os dados de algum lugar:
    #   - Arquivo => Leitura do arquivo
    #   - Pegar todos oa que estão ativos
    #       - Pegar status
    #       - Pegar nome
    #       - Pegar email
    #       - Pegar tipo
    #       - Pega plano
    #       - Pegar pontuacao
    #       - Add o dado consolidado na lista
    #   - Salvar o arquivo

    #Ler o arquivo e convertento para uma lista de dicionario
    usuarios: List[Dict[str, any]] = ler_json("data/usuarios.json")

    ativos, suspensos, inativos = [], [], []

    for i in range(0, len(usuarios)):
        usuario = usuarios[i]
        conta = usuario.get("conta")
        status = conta.get("status")
        tipo = conta.get("tipo")
        pontuacao = conta.get("pontos")

        assinatura = usuario.get("assinatura", {})
        plano = assinatura.get("plano", "Sem assinatura")

        dados_pessoais = usuario.get("dados_pessoais")
        nome = dados_pessoais.get("nome")
        email = dados_pessoais.get("email")

        dados = {
            "nome": nome,
            "email": email,
            "tipo": tipo,
            "pontos": pontuacao,
            "plano": plano
        }

        if status == "ativo":
            ativos.append(dados)
        elif status == "suspenso":
            suspensos.append(dados)
        else:
            inativos.append(dados)

        escrever_json(ativos, "data/ativos.json")
        escrever_json(suspensos, "data/suspensos.json")
        escrever_json(inativos, "data/inativos.json")

        apresentar_tabela(ativos, "Contas ativas")
        apresentar_tabela(suspensos, "Contas suspenas")
        apresentar_tabela(inativos, "Contas inativas")


def apresentar_tabela(dados: List[Dict[str, str]], titulo: str):
    table = Table(title=titulo)
    table.add_column("Nome", header_style="magenta")
    table.add_column("E-mail", style="blue")
    table.add_column("Tipo", header_style="green")
    table.add_column("Pontuação")
    table.add_column("Plano")
    
    for i in range(0, len(dados)):
        dado = dados[i]
        table.add_row(
            dado.get("nome"),
            dado.get("email"),
            dado.get("tipo"),
            str(dado.get("pontos")),
            dado.get("plano")
        )
    
    console = Console()
    console.print(table)