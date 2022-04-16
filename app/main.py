# This Python file uses the following encoding: utf-8

import sys
import qt_rc

from PySide6.QtCore import QObject, Slot, Signal
from PySide6.QtQml import QmlElement, QQmlApplicationEngine
from PySide6.QtWidgets import QApplication, QMainWindow
from PySide6.QtQuickControls2 import QQuickStyle


QML_IMPORT_NAME= 'io.qt.textproperties'
QML_IMPORT_MAJOR_VERSION = 1

@QmlElement
class Controller(QObject):
    def __init__(self, parent=None) -> None:
        super().__init__(parent)
        
        self.states = {  
                'btn_leitor':('true', 'false', 'false'),
                'btn_livros':('false', 'true', 'false'),
                'btn_transacoes':('false', 'false', 'true')}

    changeView = Signal(list)

    @Slot(str)
    def isActive(self,button_id):
        self.changeView.emit(self.states[button_id])
        
class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        QQuickStyle.setStyle('Material')


if __name__ == "__main__":
    app = QApplication(sys.argv)
    main = MainWindow() 
    engine = QQmlApplicationEngine()
    controller = Controller()
    
    #Get Context
    engine.rootContext().setContextProperty("backend", controller)
    
    #Load QML file
    engine.load('./qml/content/App.qml')
    

    sys.exit(app.exec())
