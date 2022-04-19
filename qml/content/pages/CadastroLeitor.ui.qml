import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0
import Biblioteca 1.0

Item{
    Frame {
        id: fr_form
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10


        GridLayout {
            id: gridLayout
            anchors.fill: parent
            rows: 2
            columns: 1

            Label {
                id: label
                text: qsTr("Cadastro de Leitor")
                font.letterSpacing: 6.5
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.bold: true
                font.wordSpacing: 2.1
            }

            ColumnLayout {
                id: col
                Layout.margins: 10
                Layout.fillHeight: true
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

               Image {
                        id: _067folder
                        source: "../../icons/PNG/011-user.png"
                        Layout.minimumHeight: 50
                        Layout.minimumWidth: 50
                        Layout.preferredHeight: 50
                        Layout.preferredWidth: 50
                        sourceSize.height: 0
                        sourceSize.width: 0
                        Layout.fillHeight: false
                        Layout.fillWidth: true
                        fillMode: Image.PreserveAspectFit

                }
        }
            RowLayout {
                id: btns_row
                Layout.alignment: Qt.AlignLeft | Qt.AlignBaseline
                Layout.margins: 10
                Layout.fillHeight: true
                Layout.rowSpan: 1
                Layout.columnSpan: 1
                Layout.fillWidth: true
                spacing: 1
                layoutDirection: Qt.RightToLeft


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

    /*##^##
Designer {
    D{i:0;formeditorZoom:0.9;height:600;width:500}
}
##^##*/

}
