# This Python file uses the following encoding: utf-8

from ctypes import resize
import os
import sys
# import qt_rc

from pathlib import Path
from tkinter import dialog
from PySide6.QtQuick import QQuickView, QQuickWindow
from PySide6.QtCore import QObject, Slot, Signal, QSize
from PySide6.QtQml import QmlElement
from PySide6.QtWidgets import QApplication, QFileDialog, QWidget, QMainWindow
from PySide6.QtQuickControls2 import QQuickStyle


class Controller(QObject):
    def __init__(self, parent=None) -> None:
        super().__init__(parent)
    

    # Slot to receive geometry
    # @Slot(str)
    # print(f'Geometry: %s' % qview.geometry())  

    # Slot and signal to update StackView
    page = Signal(str)

    @Slot(str)
    def push(self,p):
        self.page.emit(p)
    
    file = Signal(str)
    @Slot(None)
    def insertFile(self):
        widget = QWidget()
        dialog = QFileDialog.getOpenFileName(
            widget,
            "Abrir a foto do livro", 
            os.getcwd(), 
            "Image files(*.jpeg *.jpg *.gif *.png)" )

        sel_file =  dialog[0]

        self.file.emit(sel_file)
        print(sel_file)
        
if __name__ == "__main__":

    #INIT
    CURRENT_DIRECTORY = Path(__file__).resolve().parent
    LIBRARY_DIR = CURRENT_DIRECTORY.parents[0] / "qml" / "imports"
    app = QApplication(sys.argv)
    qview = QQuickView() # arquivo .qml
    controller = Controller()

    #Get Context
    QQuickStyle.setStyle('Material')
    qview.setGeometry(0,0, 800, 600)
    qview.setMinimumSize(QSize(800, 600))
    qview.setTitle("Biblioteca Ciep 368")
    qview.engine().addImportPath(os.fspath(LIBRARY_DIR))
    qview.engine().rootContext().setContextProperty("backend", controller)
    resize_mode = QQuickView.ResizeMode.SizeRootObjectToView
    qview.setResizeMode(resize_mode)
    
    #Load QML file
    qview.setSource('qml/content/App.qml')
    
    qview.show()
    sys.exit(app.exec())
