# This Python file uses the following encoding: utf-8

from ctypes import resize
import os
import sys
# import qt_rc

from pathlib import Path
from tkinter import dialog
from PySide6.QtQuick import QQuickView
from PySide6.QtCore import QObject, Slot, Signal
from PySide6.QtQml import QmlElement
from PySide6.QtWidgets import QApplication, QFileDialog, QWidget
from PySide6.QtQuickControls2 import QQuickStyle


class Controller(QObject):
    def __init__(self, parent=None) -> None:
        super().__init__(parent)
        self.parent = parent
        
    page = Signal(str)

    @Slot(str)
    def push(self,p):
        self.page.emit(p)
    
    file = Signal(str)
    @Slot(None)
    def insertFile(self):
        dialog, x = QFileDialog.getOpenFileName(self.parent.rootObject(), 
        "Abrir a foto do livro", os.getcwd(), 
        "Image files(*.jpeg *.jpg *.gif *.png)" )

        sel_file =  dialog

        self.file.emit(sel_file)
        print(sel_file)
        
if __name__ == "__main__":

    #INIT
    CURRENT_DIRECTORY = Path(__file__).resolve().parent
    LIBRARY_DIR = CURRENT_DIRECTORY.parents[0] / "qml" / "imports"
    app = QApplication(sys.argv)
    qview = QQuickView() # arquivo .qml
    controller = Controller(qview)

    #Get Context
    QQuickStyle.setStyle('Material')
    resize_mode = QQuickView.ResizeMode.SizeRootObjectToView
    qview.setResizeMode(resize_mode)
    qview.engine().addImportPath(os.fspath(LIBRARY_DIR))
    qview.rootContext().setContextProperty("backend", controller)
    
    #Load QML file
    qview.setSource('qml/content/App.qml')
    qview.show()
    sys.exit(app.exec())
