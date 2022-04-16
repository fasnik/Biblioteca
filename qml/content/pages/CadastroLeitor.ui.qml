/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0

Frame {
    id: fr_form
    x: 290
    y: 8
    width: 500
    height: 600


    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rowSpacing: 0
        columnSpacing: 0
        rows: 2
        columns: 1

        Label {
            id: label
            text: qsTr("Cadastro de Leitor")
            anchors.top: parent.top
            font.letterSpacing: 6.5
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 20
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.wordSpacing: 2.1
        }

        ColumnLayout {
            id: col
            Layout.margins: 10
            Layout.fillHeight: false
            Layout.fillWidth: true
            spacing: 2

            TextField {
                id: txt_nome
                horizontalAlignment: Text.AlignLeft
                transformOrigin: Item.Center
                Layout.topMargin: 1
                Layout.fillHeight: false
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.fillWidth: true
                placeholderText: qsTr("Nome")
            }


            TextField {
                id: txt_mat
                transformOrigin: Item.Center
                Layout.topMargin: 1
                Layout.fillHeight: false
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.fillWidth: true
                placeholderText: qsTr("Matricula")
            }





            TextField {
                id: txt_turma
                transformOrigin: Item.Center
                Layout.topMargin: 1
                Layout.fillHeight: false
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.fillWidth: true
                placeholderText: qsTr("Turma")
            }




            TextField {
                id: txt_endereco
                transformOrigin: Item.Center
                Layout.topMargin: 1
                Layout.fillHeight: false
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.fillWidth: true
                placeholderText: qsTr("Endereço")
            }

            TextField {
                id: txt_tel
                horizontalAlignment: Text.AlignLeft
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                transformOrigin: Item.Center
                Layout.fillHeight: false
                Layout.fillWidth: true
                Layout.margins: 0
                Layout.topMargin: 1
                placeholderText: qsTr("Telefone")
            }





            TextField {
                id: txt_email
                horizontalAlignment: Text.AlignLeft
                transformOrigin: Item.Center
                Layout.topMargin: 1
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.fillHeight: false
                Layout.fillWidth: true
                Layout.margins: 0
                placeholderText: qsTr("Email")
            }











            Label {
                id: lbl_img
                text: qsTr("Foto")
                horizontalAlignment: Text.AlignHCenter
                Layout.margins: 1
                Layout.fillHeight: false
                Layout.fillWidth: true
            }



            Loader {
                id: loader_img
                Image {
                    id: _067folder
                    anchors.fill: parent
                    source: "images/067-folder.svg"
                    fillMode: Image.PreserveAspectFit
                }
                Layout.margins: 1
                Layout.preferredHeight: 38
                Layout.preferredWidth: 70
                Layout.fillHeight: false
                Layout.fillWidth: true
            }

            RowLayout {
                id: btns_row
                Layout.alignment: Qt.AlignLeft | Qt.AlignBaseline
                Layout.margins: 10
                Layout.fillHeight: false
                Layout.rowSpan: 1
                Layout.columnSpan: 1
                Layout.fillWidth: true
                spacing: 1
                layoutDirection: Qt.RightToLeft
                anchors.rightMargin: 0

                Button {
                    id: btn_cancel
                    text: qsTr("Cancelar")
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true
                }

                Button {
                    id: btn_save
                    text: qsTr("Salvar")
                    Layout.margins: 5
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true
                }

                Button {
                    id: btn_clean
                    text: qsTr("Limpar")
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true
                }
            }





        }






    }


}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.9;height:600;width:500}
}
##^##*/