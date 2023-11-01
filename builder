# Клас, що представляє комп'ютер
class Computer:
    def __init__(self, cpu, memory, storage, graphics_card):
        self.cpu = cpu
        self.memory = memory
        self.storage = storage
        self.graphics_card = graphics_card

    def __str__(self):
        return f"Комп'ютер: CPU({self.cpu}), Пам'ять({self.memory}), Зберігання({self.storage}), Графічна карта({self.graphics_card})"

# Будівельник для комп'ютерів
class ComputerBuilder:
    def __init__(self):
        self.computer = Computer(None, None, None, None)

    def set_cpu(self, cpu):
        self.computer.cpu = cpu

    def set_memory(self, memory):
        self.computer.memory = memory

    def set_storage(self, storage):
        self.computer.storage = storage

    def set_graphics_card(self, graphics_card):
        self.computer.graphics_card = graphics_card

    def build(self):
        return self.computer


class ComputerDirector:
    def __init__(self, builder):
        self.builder = builder

    def construct_gaming_computer(self):
        self.builder.set_cpu("Intel i7")
        self.builder.set_memory("16GB DDR4")
        self.builder.set_storage("1TB SSD")
        self.builder.set_graphics_card("NVIDIA RTX 3080")

    def construct_office_computer(self):
        self.builder.set_cpu("Intel i5")
        self.builder.set_memory("8GB DDR4")
        self.builder.set_storage("512GB SSD")
        self.builder.set_graphics_card("Integrated Graphics")

if __name__ == '__main__':
    gaming_builder = ComputerBuilder()
    gaming_director = ComputerDirector(gaming_builder)
    gaming_director.construct_gaming_computer()
    gaming_computer = gaming_builder.build()
    print("Геймінговий комп'ютер:")
    print(gaming_computer)

    office_builder = ComputerBuilder()
    office_director = ComputerDirector(office_builder)
    office_director.construct_office_computer()
    office_computer = office_builder.build()
    print("Офісний комп'ютер:")
    print(office_computer)
