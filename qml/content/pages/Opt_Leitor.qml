

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0



Rectangle {
    id: rectangle
    visible: true
    color: "#000baaaa"

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        Label {
            id: lblLeitor
            text: qsTr("Leitor")
            font.letterSpacing: 6.5

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.topMargin: 20
            font.pointSize: 15
            font.wordSpacing: 2.1
            font.bold: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        }

        Button {
            id: busca_leitor
            text: qsTr("Busca")
            font.letterSpacing: 3
            font.pointSize: 11
            flat: true
            Layout.margins: 40
            Layout.fillWidth: true
            Layout.fillHeight: true
            highlighted: true
            onClicked: backend.push("pages/BuscaLeitor.ui.qml")
        }

        Button {
            id: cadastro_leitor
            text: qsTr("Cadastro")
            font.letterSpacing: 3
            font.underline: false
            display: AbstractButton.TextOnly
            font.family: "Roboto"
            font.bold: false
            font.italic: false
            font.pointSize: 11
            flat: true
            Layout.margins: 40
            Layout.fillWidth: true
            Layout.fillHeight: true
            highlighted: true
            onClicked: backend.push("pages/CadastroLeitor.ui.qml")

        }


    }

    Connections {
        target: backend
    }



}



/*##^##
Designer {
    D{i:0;height:600;width:500}
}
##^##*/
