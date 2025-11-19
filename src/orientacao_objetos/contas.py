class Conta:
    def __init__(self, titular: str, saldo_inicial: float):
        """Construtor da classe. Inicializa o titular e o saldo"""
        self.titular = titular
        self.saldo = saldo_inicial

    def depositar(self, valor_deposito: float):
        """Adiciona um valor ao saldo da conta."""
        if valor_deposito <= 0:
            print(f"DEPÓSITO: Valor do depósito inválido R$ {valor_deposito:.2f}.")            
            return

        self.saldo = self.saldo + valor_deposito
        print(f"DEPÓSITO: Depósito de R$ {valor_deposito:.2f} realizado com sucesso.")

    def sacar(self, valor_saque: float):
        """Remove um valor do saldo da conta, se houver dinheiro suficiente"""
        if valor_saque > self.saldo:
            print(f"SAQUE: Saldo insuficiente para realizar o saque de R$ {valor_saque:.2f}.")
        else:
            self.saldo = self.saldo - valor_saque
            print(f"SAQUE: Saque de R$ {self.saldo:.2f}")

    def exibir_saldo(self):
        """Mostra o status atual da conta"""
        print(f"EXTRATO: Saldo Atual de R$ {self.saldo:.2f}.")


def exemplo_conta():
    """Método para testar a funcionalidade da conta"""
    conta_bradesco = Conta("Vitor", 3900.22)

    conta_bradesco.exibir_saldo()
    conta_bradesco.depositar(100.78) #3100.22
    conta_bradesco.depositar(-10)

    conta_bradesco.sacar(4000) #Não permitir pois saldo insuficiente
    conta_bradesco.sacar(3500) #Não permitir pois saldo insuficiente

    conta_bradesco.sacar(3201)
    conta_bradesco.exibir_saldo()


# exemplo_conta()


class Aluno:
    def __init__(self, nome: str):
        self.nome = nome
        self.notas = []
        self.media = 0

    def adicionar(self, nota: float):
        self.notas.append(nota)

    def apresentar_notas(self):
        i = 0
        for nota in self.notas:
            print(f"Nota {i + 1}:", nota)
            i += 1

    def calcular_media(self):
        soma = 0
        for nota in self.notas:
            soma += nota
        
        self.media = soma / len(self.notas)

def exercicio_aluno():
    felipe = Aluno("Felipe")
    felipe.adicionar(9.3)
    felipe.adicionar(8.9)
    felipe.adicionar(9.6)
    felipe.apresentar_notas()
    
    felipe.calcular_media()

    print(f"Media do aluno {felipe.nome}: {felipe.media:.2f}")

exercicio_aluno()


class Produto:
    def __init__(self):
        self.produto: str = None


class carrinho:
    def __init__(self):
        self.produto: Produto
        self.valor: float = 0
        self.quantidade: int = 0
        

def exemplo_carrinho():
    carrinho = CarrinhoDeCompras()

    carrinho.exibir_itens()

    # Criando itens corretamente
    carrinho.adicionar_item("Arroz", 25.90, 2)
    carrinho.adicionar_item("Feijão", 8.50, 3)
    carrinho.adicionar_item("Leite", 4.90, 6)

    # Itens inválidos
    carrinho.adicionar_item("Chocolate", -10.0, 1)  # depois posso validar
    carrinho.adicionar_item("Biscoito", 5.0, 0)

    carrinho.exibir_itens()

    # Atualizando quantidade
    carrinho.adicionar_item("Arroz", 25.90, 1)

    carrinho.exibir_itens()

    # Remoções
    carrinho.remover_item("Feijão")
    carrinho.remover_item("Café")  # não existe
    carrinho.remover_item("Feijão")  # já removido

    carrinho.exibir_itens()


    carrinho.calcular_total()


class Item:
    def __init__(self, nome: str, preco: float, quantidade: int):
        self.nome = nome
        self.preco = preco
        self.quantidade = quantidade

    def subtotal(self):
        return self.preco * self.quantidade


class CarrinhoDeCompras:
    def __init__(self):
        self.itens = [] 


    def adicionar_item(self, nome: str, preco: float, quantidade: int):
        if preco <=0:
            print(f"Preço inválido: {preco}")
            return
        if quantidade <= 0:
            print(f"Quantidade inválida: {quantidade}")
            return

        self.itens.append(Item(nome, preco, quantidade))


    def remover_item(self, nome_item: str):
        for i in range(len(self.itens)):
            if self.itens[i].nome == nome_item:
                self.itens.pop(i)
                print(f"Item '{nome_item}' removido.")
                return
            
        print(f"Item '{nome_item}' não encontrado")


    def exibir_itens(self):
        print("\nItens do carrinho:")
        for item in self.itens:
            print(f"{item.nome} - R$ {item.preco:.2f} x {item.quantidade} "
                  f"= R$ {item.subtotal():.2f}")


    def calcular_total(self):
        total = sum(item.subtotal() for item in self.itens)
        print(f"TOTAL A PAGAR: R$ {total:.2f}")
        return total


#exemplo_carrinho()

def exemplo_turma():
    turma = Turma("Python Fundamentos")

    turma.listar_alunos()

    # Aluno com todos os dados
    turma.adicionar_aluno("Vitor", idade=20, email="vitor@example.com", nota=9.5)

    # Aluna só com nome e idade
    turma.adicionar_aluno("Ana", idade=18)

    # Aluno só com nome e e-mail
    turma.adicionar_aluno("Marcos", email="marcos@example.com")

    # Aluna só com nome (mínimo de informação)
    turma.adicionar_aluno("Julia")

    # Tentativa de duplicado
    turma.adicionar_aluno("Vitor")  # duplicado

    turma.listar_alunos()
    turma.quantidade_alunos()

    turma.remover_aluno("Ana")
    turma.remover_aluno("Carlos")  # não existe

    turma.listar_alunos()
    turma.quantidade_alunos()


class Turma:
    pass


exemplo_turma()


# def exemplo_agenda():
#     agenda = AgendaContatos()

#     agenda.listar_contatos()
#     agenda.adicionar_contato("Ana", "47 99999-0000", "ana@example.com")
#     agenda.adicionar_contato("Bruno", "47 98888-1111", "bruno@example.com")
#     agenda.adicionar_contato("Ana", "47 97777-2222", "outraana@example.com")

#     agenda.listar_contatos()

#     agenda.buscar_contato("Bruno")
#     agenda.buscar_contato("Carlos")

#     agenda.remover_contato("Ana")
#     agenda.remover_contato("Carlos")

#     agenda.listar_contatos()