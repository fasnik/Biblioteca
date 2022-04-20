import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0
import Biblioteca 1.0

Item {
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
            rows: 4
            columns: 1


            Label {
                id: label
                text: qsTr("Busca de Leitor")
                font.letterSpacing: 6.5
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.bold: true
                font.wordSpacing: 2.1
            }


            Label {
                id: label1
                text: qsTr("digite ao menos um dos campos a seguir para realizar a busca")
                horizontalAlignment: Text.AlignRight
                font.italic: true
                font.pointSize: 8
                Layout.fillHeight: false
                Layout.fillWidth: true
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
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    Layout.leftMargin: 10
                    Layout.fillWidth: true
                    placeholderText: qsTr("Nome")
                }

                TextField {
                    id: txt_mat
                    transformOrigin: Item.Center
                    Layout.topMargin: 1
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    Layout.leftMargin: 10
                    Layout.fillWidth: true
                    placeholderText: qsTr("Matricula")
                }

                TextField {
                    id: txt_turma
                    transformOrigin: Item.Center
                    Layout.topMargin: 1
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    Layout.leftMargin: 10
                    Layout.fillWidth: true
                    placeholderText: qsTr("Turma")
                }
            }


            RowLayout {
                id: btns_row
                Layout.alignment: Qt.AlignLeft | Qt.AlignBaseline
                Layout.margins: 0
                Layout.fillHeight: true
                Layout.fillWidth: true
                spacing: 1
                layoutDirection: Qt.LeftToRight

                Button {
                    id: btn_cancel
                    text: qsTr("Voltar")
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true
                }


                Button {
                    id: btn_clean
                    text: qsTr("Limpar")
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true
                }
                Button {
                    id: btn_save
                    text: qsTr("Buscar")
                    Layout.rightMargin: 0
                    Layout.leftMargin: 0
                    Layout.fillHeight: false
                    Layout.margins: 0
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
