from PySide6.QtSql import QSqlQueryModel, QSqlRecord
from PySide6.QtCore import QObject, Qt

class LeitorModel(QSqlQueryModel):
    def __init__(self, db, parent=QObject()) -> None:
        super().__init__(parent)
        self.db = db


        # nome = "%"+search_leitor[0]+"%"
        # matricula = "%"+search_leitor[1]+"%"
        # turma = "%"+search_leitor[2]+"%"
        # self.setQuery('''
        # SELECT * FROM Leitor WHERE nome LIKE ? AND matricula LIKE ? AND turma LIKE ?  ''', (nome, matricula, turma)))
        self.setQuery("SELECT id_leitor,nome, matricula FROM Leitor")
    
    def roleNames(self):
        myroles = {}
        id = 'id'.encode()
        nome = "nome".encode()
        matricula = "matricula".encode()

        myroles[hash(Qt.UserRole)] = id
        myroles[hash(Qt.UserRole+1)] = nome
        myroles[hash(Qt.UserRole+2)]= matricula
        return myroles

    def data(self, index, role):
        if role < Qt.UserRole:
            return super().data(index, role)
            
        sql_record = QSqlRecord()
        sql_record = self.record(index.row())            
        
        return sql_record.value(role - Qt.UserRole)
        