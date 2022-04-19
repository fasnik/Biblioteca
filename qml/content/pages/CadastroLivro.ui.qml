

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0
import Biblioteca 1.0

Item{
    Frame {

        id: fr_form
        visible: true
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10


        GridLayout {
            id: gridLayout
            anchors.fill: parent
            rows: 1
            columns: 1

            Label {
                id: label
                text: qsTr("Cadastro de Livro")
                font.letterSpacing: 6.5
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: true
                Layout.leftMargin: 0
                Layout.fillWidth: true
                Layout.rightMargin: 0
                font.wordSpacing: 2.1
                bottomPadding: 2
                font.bold: true
            }

            ColumnLayout {
                id: col
                spacing: 1
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                TextField {
                    id: txt_reg
                    horizontalAlignment: Text.AlignLeft
                    Layout.leftMargin: 10
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    placeholderText: qsTr("ISBN")
                    transformOrigin: Item.Center
                    Layout.topMargin: 6
                }

                TextField {
                    id: txt_titulo
                    Layout.leftMargin: 10
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    placeholderText: qsTr("Título")
                    transformOrigin: Item.Center
                    Layout.topMargin: 6
                }

                TextField {
                    id: txt_volume
                    Layout.leftMargin: 10
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    placeholderText: qsTr("Volume, se possuir")
                    transformOrigin: Item.Center
                    Layout.topMargin: 6
                }

                TextField {
                    id: txt_autor
                    Layout.leftMargin: 10
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    placeholderText: qsTr("Autor")
                    transformOrigin: Item.Center
                    Layout.topMargin: 6
                }

                TextField {
                    id: txt_colecao
                    horizontalAlignment: Text.AlignLeft
                    Layout.fillHeight: true
                    Layout.leftMargin: 10
                    Layout.margins: 0
                    Layout.fillWidth: true
                    Layout.rightMargin: 10
                    placeholderText: qsTr("Coleção, se possuir")
                    transformOrigin: Item.Center
                    Layout.topMargin: 6
                }

                TextField {
                    id: txt_editora
                    Layout.leftMargin: 10
                    Layout.margins: 0
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    placeholderText: qsTr("Editora")
                    transformOrigin: Item.Center
                    Layout.topMargin: 6
                }

                TextField {
                    id: txt_gem
                    Layout.leftMargin: 10
                    Layout.margins: 0
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    placeholderText: qsTr("Gênero")
                    transformOrigin: Item.Center
                    Layout.topMargin: 6
                }
                Layout.margins: 0
                Layout.leftMargin: 0
                Layout.bottomMargin: 0
                clip: true
                Layout.fillWidth: true
                Layout.rightMargin: 0
                Layout.topMargin: 0
            }

            RowLayout {
                id: row
                Layout.leftMargin: 0
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.rightMargin: 0
                Switch {
                    id: sw_nac
                    text: qsTr("Nacional")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    checked: true
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                Switch {
                    id: sw_pt
                    text: qsTr("Em portugues?")
                    checked: true
                    Layout.margins: 0
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                Button {
                    id: folder_btn
                    text: "Foto"
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    display: AbstractButton.TextOnly
                    flat: true


                    Connections {
                        target: folder_btn
                        onClicked: backend.insertFile()
                    }
                }
                Layout.topMargin: 0
            }

            RowLayout {
                id: btns_row
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignBaseline
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
                Layout.columnSpan: 1
                Layout.margins: 10
                Layout.fillWidth: true
                anchors.rightMargin: 0
            }
            columnSpacing: 0
        }
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:0.75;height:530;width:500}
}
##^##*/

