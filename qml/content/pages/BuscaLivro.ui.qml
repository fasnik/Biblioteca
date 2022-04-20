

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
    width: 500
    height: 600
    visible: true
    padding: 15
    clip: true


    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rowSpacing: 0
        rows: 2
        columns: 1

        Label {
            id: label
            text: qsTr("Busca de Livro")
            font.letterSpacing: 6.5
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.NoWrap
            topPadding: 2
            Layout.fillHeight: false
            anchors.horizontalCenter: parent.horizontalCenter
            Layout.leftMargin: 10
            Layout.fillWidth: true
            Layout.rightMargin: 10
            font.wordSpacing: 2.1
            bottomPadding: 2
            font.bold: true
        }


        Label {
            id: label1
            text: qsTr("digite ao menos uma das opçoes para realizar a busca")
            font.letterSpacing: 0
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.NoWrap
            font.italic: true
            font.pointSize: 8
            bottomPadding: 2
            anchors.horizontalCenter: parent.horizontalCenter
            topPadding: 2
            font.wordSpacing: 0
            font.bold: false
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
            Layout.fillHeight: false
        }

        ColumnLayout {
            id: col
            Layout.rowSpan: 1
            spacing: -1
            Layout.fillHeight: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            TextField {
                id: txt_reg
                horizontalAlignment: Text.AlignLeft
                Layout.leftMargin: 10
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.rightMargin: 10
                placeholderText: qsTr("ISBN")
                transformOrigin: Item.Center
                Layout.topMargin: 6
            }

            TextField {
                id: txt_titulo
                Layout.leftMargin: 10
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.rightMargin: 10
                placeholderText: qsTr("Título")
                transformOrigin: Item.Center
                Layout.topMargin: 6
            }

            TextField {
                id: txt_autor
                Layout.leftMargin: 10
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.rightMargin: 10
                placeholderText: qsTr("Autor")
                transformOrigin: Item.Center
                Layout.topMargin: 6
            }

            RowLayout {
                id: row
                Layout.leftMargin: 10
                Layout.rowSpan: 1
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.rightMargin: 10

                ColumnLayout {
                    Loader {
                        id: loader_img
                        Layout.fillWidth: true
                        Layout.margins: 1
                        Layout.preferredHeight: 38
                        Layout.fillHeight: true
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        Layout.preferredWidth: 70
                        Image {
                            id: _067folder
                            anchors.verticalCenter: parent.verticalCenter
                            source: "images/067-folder.svg"
                            sourceSize.width: 10
                            anchors.horizontalCenter: parent.horizontalCenter
                            sourceSize.height: 20
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                }
                Layout.topMargin: 2
            }

            RowLayout {
                id: btns_row
                Layout.rowSpan: 1
                spacing: 0
                Layout.fillHeight: false
                Layout.alignment: Qt.AlignLeft | Qt.AlignBaseline
                Button {
                    id: btn_cancel
                    text: qsTr("Cancelar")
                    Layout.margins: 5
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true
                }


                Button {
                    id: btn_clean
                    text: qsTr("Limpar")
                    flat: false
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true
                }
                Layout.columnSpan: 0
                Layout.margins: 10
                Layout.fillWidth: true
                layoutDirection: Qt.LeftToRight
                anchors.rightMargin: 0
                Button {
                    id: btn_search
                    text: qsTr("Buscar")
                    Layout.margins: 5
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    highlighted: true
                }
            }
            Layout.columnSpan: 1
            Layout.margins: 0
            Layout.leftMargin: 10
            Layout.bottomMargin: 0
            clip: true
            Layout.fillWidth: true
            Layout.rightMargin: 10
            Layout.topMargin: 0
        }

        columnSpacing: 0
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75;height:530;width:500}D{i:3}
}
##^##*/

