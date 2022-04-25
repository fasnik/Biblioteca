import sqlite3
from matplotlib.pyplot import cla


class Bool:
    def __init__(self, value=True) -> None:
        self.value = value
    def __conform__(self, protocol):
        if protocol is sqlite3.PrepareProtocol:
            return "%d" % (self.value)

class Telefone:
    def __init__(self) -> None:
        pass


class Enum:
    def __init__(self) -> None:
        pass
