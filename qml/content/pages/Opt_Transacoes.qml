

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
    visible: true
    color: Constants.transparent

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        Label {
            id: label1
            text: "Transações"
            font.letterSpacing: 6.5
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.topMargin: 20
            Layout.fillHeight: true
            font.wordSpacing: 2.1
            font.bold: true
            font.pointSize: 15
            Layout.fillWidth: true
        }

        Button {
            id: button
            text: qsTr("Emprestimo")
            font.letterSpacing: 3
            flat: true
            highlighted: true
            Layout.margins: 40
            Layout.fillHeight: true
            Layout.fillWidth: true
        }


        Button {
            id: button1
            text: qsTr("Devoluçao")
            font.letterSpacing: 3
            flat: true
            highlighted: true
            Layout.margins: 40
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5;height:600;width:800}D{i:1}
}
##^##*/

