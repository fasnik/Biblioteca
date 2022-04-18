

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0
import Biblioteca 1.0

Rectangle {
    id: rectangle
    width: 500
    height: 600
    visible: true
    color: Constants.transparent
    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        Layout.columnSpan: 1
        Layout.margins: 10
        Layout.leftMargin: 50
        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
        Layout.preferredHeight: 100
        Layout.preferredWidth: 200

        Label {
            id: lblLeitor
            text: qsTr("Livros")
            font.letterSpacing: 6.5

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.topMargin: 20
            font.wordSpacing: 2.1
            font.bold: true
            font.pointSize: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        }

        Button {
            id: cadastro_livros
            text: qsTr("Cadastro")
            font.letterSpacing: 3
            flat: true
            Layout.margins: 40
            Layout.fillWidth: true
            Layout.fillHeight: true
            highlighted: true
            onClicked: backend.push("pages/CadastroLivro.ui.qml")

        }

        Button {
            id: atualizacao_livros
            text: qsTr("Atualizaçao")
            font.letterSpacing: 3
            flat: true
            Layout.margins: 40
            Layout.fillWidth: true
            Layout.fillHeight: true
            highlighted: true
            onClicked: backend.push("pages/AtualizaLivro.ui.qml")

        }

    }

    Connections{
        target: backend
    }


}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
