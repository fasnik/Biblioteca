import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs
import QtQuick.Layouts 6.0

Item {

    FileDialog {
        id: dialog
    }
    Dialog {
        id: notify
        title: "Confirmação"
        modal: true
        standardButtons: Dialog.Ok
        Text {
            id: txt_notify
            text: qsTr("Cadastro Realizado com sucesso")

        }
    }
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
                Layout.columnSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.bold: true
                font.wordSpacing: 2.1
            }

            ColumnLayout {
                id: col
                Layout.columnSpan: 1
                Layout.margins: 10
                Layout.fillHeight: true
                Layout.fillWidth: true
                spacing: 2

                TextField {
                    id: txt_nome
                    horizontalAlignment: Text.AlignLeft
                    Layout.columnSpan: 1
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
                    Layout.columnSpan: 1
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
                    Layout.columnSpan: 1
                    transformOrigin: Item.Center
                    Layout.topMargin: 1
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    Layout.leftMargin: 10
                    Layout.fillWidth: true
                    placeholderText: qsTr("Turma")
                }

                TextField {
                    id: txt_endereco
                    Layout.columnSpan: 1
                    transformOrigin: Item.Center
                    Layout.topMargin: 1
                    Layout.fillHeight: true
                    Layout.rightMargin: 10
                    Layout.leftMargin: 10
                    Layout.fillWidth: true
                    placeholderText: qsTr("Endereço")
                }

                TextField {
                    id: txt_tel
                    horizontalAlignment: Text.AlignLeft
                    Layout.columnSpan: 1
                    Layout.rightMargin: 10
                    Layout.leftMargin: 10
                    transformOrigin: Item.Center
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.margins: 0
                    Layout.topMargin: 1
                    placeholderText: qsTr("Telefone")
                }

                TextField {
                    id: txt_email
                    horizontalAlignment: Text.AlignLeft
                    Layout.columnSpan: 1
                    transformOrigin: Item.Center
                    Layout.topMargin: 1
                    Layout.rightMargin: 10
                    Layout.leftMargin: 10
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.margins: 0
                    placeholderText: qsTr("Email")
                }

                RowLayout {
                    id: rowLayout
                    width: 100
                    height: 100
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    TextField {
                        id: txt_foto
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        placeholderText: qsTr("Foto")
                    }

                    Button {
                        id: btn_foto
                        text: qsTr("...")
                        Layout.columnSpan: 1
                        Layout.fillHeight: false
                        Layout.fillWidth: false

                        Connections {
                            target: btn_foto
                            function onClicked() {
                                dialog.open()
                            }
                        }
                    }
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
                layoutDirection: Qt.LeftToRight


                Button {
                    id: btn_clean
                    text: qsTr("Limpar")
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true

                    Connections {
                        target: btn_clean
                        function onClicked() {
                            txt_email.text = ""
                            txt_endereco.text = ""
                            txt_mat.text = ""
                            txt_nome.text = ""
                            txt_tel.text = ""
                            txt_turma.text = ""
                        }
                    }
                }

                Button {
                    id: btn_save
                    text: qsTr("Salvar")
                    Layout.margins: 5
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true

                    Connections {
                        target: btn_save
                        function onClicked() {

                            backend.insertLeitor(
                                        [txt_mat.text, 
                                        txt_nome.text, 
                                        txt_turma.text, 
                                        txt_endereco.text, 
                                        txt_foto.text, 
                                        txt_email.text])
                            notify.open()
                        }
                    }
                }
            }
        }
    }

    Connections {
        target: dialog
        function onAccepted() {
            txt_foto.text = dialog.currentFile
        }
    }


    /*##^##
Designer {
    D{i:0;formeditorZoom:0.9;height:600;width:500}
}
##^##*/
}
