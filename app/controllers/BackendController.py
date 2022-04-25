from PySide6.QtCore import QObject, Signal, Slot
class BackendController(QObject):
    def __init__(self, parent=None, database = None) -> None:
        super().__init__(parent)
        self.db = database
    # Slot and signal to update StackView
    page = Signal(str)
    @Slot(str)
    def push(self,p):
        self.page.emit(p)
    
    # Insert into Leitor Table
    @Slot(list)
    def insertLeitor(self,leitor):
        self.db.insert_leitor(leitor)
    
    # Search in Leitor Table
    @Slot(list)
    def search_leitores(self, search):
        self.db.show_selected_leitores(search)
