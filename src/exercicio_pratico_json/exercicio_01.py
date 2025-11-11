from typing import Dict, List
from src.arquivos import ler_json, escrever_json


def exercicio_01():
    usuarios: List[Dict[str, any]] = ler_json("data/usuarios.json")

    nomes = []

    for i in range(0, len(usuarios)):
        usuario = usuarios[i]
        dados_pessoais = usuario.get("dados_pessoais")
        nome = dados_pessoais.get("nome")

        dados = {
            "nome": nome
        }

        nomes.append(dados)

        escrever_json(nomes, "data/nomes.json")


def exercicio_02():
    usuarios: List[Dict[str, any]] = ler_json("data/usuarios.json")

    tags = []

    for i in range(0, len(usuarios)):
        usuario = usuarios[i]
        tag_usuario = usuario.get("tags")
        
        for i in range(0, len(tag_usuario)):
            tags.append(tag_usuario[i])

        tags.append(tag_usuario)
    escrever_json(tags, "data/tags.json")
