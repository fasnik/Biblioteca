# This Python file uses the following encoding: utf-8

import os, sys
from pathlib import Path

# from PySide6.QtCore import QObject, QSize, Signal, Slot, Qt, QPersistentModelIndex, QModelIndex
# from PySide6.QtSql import QSqlQueryModel, QSqlDatabase, QSqlQuery, QSqlRecord
from PySide6.QtCore import  QSize
from PySide6.QtQuick import QQuickView
from PySide6.QtQuickControls2 import QQuickStyle
from PySide6.QtWidgets import QApplication

# import qt_rc
from database.dbSQLITE import DB
from database.dbQT import QtDB
from models.LeitorModel import LeitorModel
from controllers.BackendController import BackendController


if __name__ == "__main__":

    #INIT
    CURRENT_DIRECTORY = Path(__file__).resolve().parent
    LIBRARY_DIR = CURRENT_DIRECTORY.parents[0] / "qml" / "imports"
    
    db = DB()
    dbQT = QtDB(db.name)
    
    model_leitor = LeitorModel(db.name)
    app = QApplication(sys.argv)
    qview = QQuickView() # arquivo .qml
    controller = BackendController(database=db)



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
