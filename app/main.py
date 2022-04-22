# This Python file uses the following encoding: utf-8

import os, sys
from pathlib import Path


from PySide6.QtCore import QObject, QSize, Signal, Slot, Qt, QPersistentModelIndex, QModelIndex
from PySide6.QtQuick import QQuickView
from PySide6.QtQuickControls2 import QQuickStyle
from PySide6.QtSql import QSqlQueryModel, QSqlDatabase, QSqlQuery, QSqlRecord
from PySide6.QtWidgets import QApplication

# import qt_rc
from db import DB

class QtDB(QSqlDatabase):
    def __init__(self):
        super().__init__()
        self.db = self.addDatabase("QSQLITE");
        self.db.setDatabaseName("biblioteca.db");
        self.ok = self.db.open();
class LeitorModel(QSqlQueryModel):
    def __init__(self, parent=QObject()) -> None:
        super().__init__(parent)
        self.db = QtDB()
        self.setQuery("SELECT nome, matricula FROM Leitor")
    
    def roleNames(self):
        myroles = {}
        nome = "nome".encode()
        matricula = "matricula".encode()
        myroles[hash(Qt.UserRole)] = nome
        myroles[hash(Qt.UserRole+1)]= matricula
        return myroles

    def data(self, index, role):
        if role < Qt.UserRole:
            return super().data(index, role)
            
        sql_record = QSqlRecord()
        sql_record = self.record(index.row())            
        
        return sql_record.value(role - Qt.UserRole)
class Controller(QObject):
    def __init__(self, parent=None, database: DB=None) -> None:
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

if __name__ == "__main__":

    #INIT
    CURRENT_DIRECTORY = Path(__file__).resolve().parent
    LIBRARY_DIR = CURRENT_DIRECTORY.parents[0] / "qml" / "imports"
    db = DB()
    model_leitor = LeitorModel()
    app = QApplication(sys.argv)
    qview = QQuickView() # arquivo .qml
    controller = Controller(database=db)



    #Get Context
    QQuickStyle.setStyle('Material')
    qview.setGeometry(0,0, 800, 600)
    qview.setMinimumSize(QSize(800, 600))
    qview.setTitle("Biblioteca Ciep 368")
    qview.engine().addImportPath(os.fspath(LIBRARY_DIR))
    qview.engine().rootContext().setContextProperty("backend", controller)    
    qview.engine().rootContext().setContextProperty("model_leitor", model_leitor)
    
    
    resize_mode = QQuickView.ResizeMode.SizeRootObjectToView
    qview.setResizeMode(resize_mode)
    
    #Load QML file
    qview.setSource('qml/content/App.qml')
    
    qview.show()
    sys.exit(app.exec())
