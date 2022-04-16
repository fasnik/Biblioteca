# This Python file uses the following encoding: utf-8

import sys
#import qt_rc

from PySide6.QtQuick import QQuickView
from PySide6.QtCore import QObject, Slot, Signal
# from PySide6.QtQml import QmlElement, QQmlApplicationEngine, QQmlEngine
from PySide6.QtWidgets import QApplication, QMainWindow
from PySide6.QtQuickControls2 import QQuickStyle


class Controller(QObject):
    def __init__(self, parent=None) -> None:
        super().__init__(parent)
        
    page = Signal(str)

    @Slot(str)
    def push(self,p):
        self.page.emit(p)
        
class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        QQuickStyle.setStyle('Material')


if __name__ == "__main__":

    #INIT
    app = QApplication(sys.argv)
    main = MainWindow() 
    qview = QQuickView() # arquivo .qml
    controller = Controller()

    #Get Context
    qview.rootContext().setContextProperty("backend", controller)
    
    #Load QML file
    qview.setSource('qml/content/App.qml')
    qview.show()
    sys.exit(app.exec())
