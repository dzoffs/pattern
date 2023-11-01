# Отримувач (Receiver)
class Light:
    def on(self):
        print("Світло увімкнено")

    def off(self):
        print("Світло вимкнено")

# Абстрактний клас команди
class Command:
    def execute(self):
        pass

# Конкретна команда для ввімкнення світла
class LightOnCommand(Command):
    def __init__(self, light):
        self.light = light

    def execute(self):
        self.light.on()

# Конкретна команда для вимкнення світла
class LightOffCommand(Command):
    def __init__(self, light):
        self.light = light

    def execute(self):
        self.light.off()

# Об'єкт ініціатора, який видає команди
class RemoteControl:
    def __init__(self):
        self.command = None

    def set_command(self, command):
        self.command = command

    def press_button(self):
        if self.command is not None:
            self.command.execute()


if __name__ == '__main__':
    light = Light()
    light_on = LightOnCommand(light)
    light_off = LightOffCommand(light)

    remote = RemoteControl()

    remote.set_command(light_on)
    remote.press_button()

    remote.set_command(light_off)
    remote.press_button()
