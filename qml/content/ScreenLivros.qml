

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.0
import QtQuick.Timeline 1.0



Rectangle {
    id: rectangle
    width: 800
    height: 600
    visible: true
    color: "#8baaaa"
    radius: 0
    border.color: "#d5000000"
    border.width: 3
    state: ""
    gradient: Gradient {
        orientation: Gradient.Vertical
        GradientStop {
            position: 0
            color: "#8baaaa"
        }

        GradientStop {
            position: 1
            color: "#ae8b9c"
        }
    }
    transformOrigin: Item.TopLeft
    rotation: 0

    RowLayout {
        id: rowLayout
        anchors.fill: parent
        scale: 1
        spacing: 0
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 15.93

        GridLayout {
            id: gridLayout
            height: 800
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.bottomMargin: 133
            flow: GridLayout.TopToBottom
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            rows: 4
            columns: 1
            rowSpacing: 1
            columnSpacing: 0
            Layout.margins: 10
            Layout.leftMargin: 10
            Layout.preferredHeight: 500
            Layout.preferredWidth: 100

            Label {
                id: label
                text: "Biblioteca CIEP 368"
                font.letterSpacing: 3.1
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
                font.weight: Font.Normal
                font.bold: false
                Layout.fillHeight: true
                Layout.margins: 10
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.bottomMargin: 10
                Layout.topMargin: 10
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.minimumHeight: 100
                Layout.minimumWidth: 100
                Layout.preferredHeight: 100
                Layout.preferredWidth: 100

                Image {

                    id: _026bookmark
                    x: 75
                    y: 103
                    width: 115
                    height: 115
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/026-bookmark.svg"
                    rotation: 0
                    anchors.verticalCenterOffset: 0
                    anchors.horizontalCenterOffset: 0
                    mirror: false
                    mipmap: false
                    anchors.horizontalCenter: parent.horizontalCenter
                    sourceSize.height: 50
                    sourceSize.width: 50
                    fillMode: Image.PreserveAspectFit
                }
            }

            Button {
                id: btn_leitor
                width: 156
                opacity: 1
                text: qsTr("Leitor")
                padding: 10
                clip: false
                autoRepeat: false
                autoExclusive: false
                checked: false
                checkable: false
                display: AbstractButton.TextOnly
                Layout.rowSpan: 1
                font.bold: true
                spacing: 6
                highlighted: true
                flat: false
                Layout.margins: 10
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.bottomMargin: 10
                Layout.topMargin: 10
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: 0
                Layout.minimumWidth: 0
                Layout.preferredHeight: 0
                Layout.preferredWidth: 0
                onClicked: backend.isActive("btn_leitor")

            }

            Button {
                id: btn_livros
                text: qsTr("Livros")
                padding: 10
                font.bold: true
                highlighted: true
                Layout.margins: 10
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.bottomMargin: 10
                Layout.topMargin: 10
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: 0
                Layout.minimumWidth: 0
                Layout.preferredHeight: 0
                Layout.preferredWidth: 0
                onClicked: backend.isActive("btn_livros")
            }

            Button {
                id: btn_transacoes
                text: qsTr("Transaçoes")
                padding: 10
                font.bold: true
                highlighted: true
                Layout.margins: 10
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.bottomMargin: 10
                Layout.topMargin: 10
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: 0
                Layout.minimumWidth: 0
                Layout.preferredHeight: 0
                Layout.preferredWidth: 0
                onClicked: backend.isActive("btn_transacoes")
            }
        }

        ColumnLayout {
            id: columnLayout
            Layout.columnSpan: 1
            Layout.margins: 10
            Layout.leftMargin: 50
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.preferredHeight: 100
            Layout.preferredWidth: 200

            Label {
                id: lblLeitor
                text: qsTr("Livros")
                
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.fillHeight: false
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            }

            Button {
                id: cadastro_livros
                text: qsTr("Cadastro")
                Layout.margins: 40
                Layout.fillWidth: true
                Layout.fillHeight: false
                highlighted: true

            }

            Button {
                id: atualizacao_livros
                text: qsTr("Atualizaçao")
                Layout.margins: 40
                Layout.fillWidth: true
                Layout.fillHeight: false
                highlighted: true
            }

        }
    }

    ToolSeparator {
        id: toolSeparator
        x: 279
        y: 0
        width: 10
        height: 600
    }

    Connections {
        target: backend

        function onChangeView(){
        }
    }


}


