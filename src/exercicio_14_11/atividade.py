class Dono:
    def __init__(self, nome: str, cpf: str, bairro: str, rua: str, numero: int):
        self.nome = nome
        self.cpf = cpf
        self.bairro = bairro
        self.rua = rua
        self.numero = numero

    def __str__(self):
        return f"Dono(nome={self.nome}, cpf={self.cpf}, bairro={self.bairro}, rua={self.rua}, numero={self.numero})"


class Animal:
    def __init__(self, raca: str, dono: Dono, data_nascimento: str):
        self.raca = raca
        self.dono = dono
        self.data_nascimento = data_nascimento

    def __str__(self):
        return (
            f"Animal(raca={self.raca}, dono={self.dono.nome}, "
            f"data_nascimento={self.data_nascimento})"
        )


class DonoCRUD:
    def __init__(self):
        self.donos = []

    def criar(self):
        print("\n=== CADASTRAR DONO ===")
        nome = input("Nome do dono: ")
        cpf = input("CPF do dono: ")

        dono = Dono(nome, cpf)
        self.donos.append(dono)
        print("\nDono cadastrado com sucesso!")
        return dono

    def listar(self):
        print("\n=== LISTA DE DONOS ===")
        if not self.donos:
            print("Nenhum dono cadastrado.")
        else:
            for d in self.donos:
                print(d)


class AnimalCRUD:
    def __init__(self):
        self.animais = []

    def criar(self, donos: list):
        print("\n=== CADASTRAR ANIMAL ===")

        if not donos:
            print("ERRO: não existe nenhum dono cadastrado!")
            return None

        raca = input("Raça do animal: ")

        print("\nEscolha o dono do animal:")
        for i, d in enumerate(donos):
            print(f"{i + 1} - {d.nome} (CPF: {d.cpf})")

        numero_dono = int(input("Digite o número do dono: ")) - 1
        dono_escolhido = donos[numero_dono]

        data_nascimento = input("Data de nascimento (AAAA-MM-DD): ")

        animal = Animal(raca, dono_escolhido, data_nascimento)
        self.animais.append(animal)

        print("\nAnimal cadastrado com sucesso!")
        return animal

    def listar(self):
        print("\n=== LISTA DE ANIMAIS ===")
        if not self.animais:
            print("Nenhum animal cadastrado.")
        else:
            for a in self.animais:
                print(a)


def executar_crud():
    dono_crud = DonoCRUD()
    animal_crud = AnimalCRUD()

    while True:
        print("\n========= MENU =========")
        print("1 - Cadastrar dono")
        print("2 - Listar donos")
        print("3 - Cadastrar animal")
        print("4 - Listar animais")
        print("0 - Sair")
        print("========================")

        opcao = input("Escolha: ")

        if opcao == "1":
            dono_crud.criar()
        elif opcao == "2":
            dono_crud.listar()
        elif opcao == "3":
            animal_crud.criar(dono_crud.donos)
        elif opcao == "4":
            animal_crud.listar()
        elif opcao == "0":
            print("Saindo...")
            break
        else:
            print("Opção inválida, tente novamente.")
