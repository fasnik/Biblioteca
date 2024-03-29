

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    visible: true
    clip: true
    color: "#0000ffff"
//    gradient: Gradient {
//        orientation: Gradient.Vertical
//        GradientStop {
//            position: 0
//            color: "#8baaaa"
//        }

//        GradientStop {
//            position: 1
//            color: "#ae8b9c"
    //        }
    //    }



    ColumnLayout {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10


        Image {

            id: _026bookmark
            source: "images/026-bookmark.svg"
            Layout.columnSpan: 1
            Layout.rowSpan: 5
            Layout.fillHeight: true
            Layout.fillWidth: true
            rotation: 0
            mirror: false
            mipmap: false
            sourceSize.height: 70
            sourceSize.width: 100
            fillMode: Image.PreserveAspectFit
        }

        Label {
            id: label
            text: "Biblioteca CIEP 368"
            font.letterSpacing: 6.5
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            Layout.columnSpan: 1
            Layout.rowSpan: 3
            font.weight: Font.Normal
            font.bold: true
            Layout.fillHeight: true
            Layout.margins: 10
            Layout.rightMargin: 10
            Layout.leftMargin: 10
            Layout.bottomMargin: 10
            Layout.topMargin: 10
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Button {
            id: btn_leitor
            text: qsTr("Leitor")
            padding: 10
            clip: false
            display: AbstractButton.TextOnly
            Layout.rowSpan: 1
            font.bold: true
            spacing: 6
            highlighted: true
            flat: false
            Layout.margins: 0
            Layout.rightMargin: 10
            Layout.leftMargin: 10
            Layout.bottomMargin: 10
            Layout.topMargin: 10
            Layout.fillHeight: false
            Layout.fillWidth: true
            onClicked: {
                stackView.push(Qt.resolvedUrl("pages/Opt_Leitor.qml"))
            }

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
            Layout.fillHeight: false
            Layout.fillWidth: true
            onClicked: {
                stackView.push(Qt.resolvedUrl("pages/Opt_Livros.qml"))
            }
        }

        Button {
            id: btn_transacoes
            text: qsTr("Transaçoes")
            padding: 10
            font.bold: true
            highlighted: true
            Layout.margins: 0
            Layout.rightMargin: 10
            Layout.leftMargin: 10
            Layout.topMargin: 10
            Layout.fillHeight: false
            Layout.fillWidth: true
            onClicked: {
                stackView.push(Qt.resolvedUrl("pages/Opt_Transacoes.qml"))
            }
        }
    }




    Connections {
        target: backend
        function onPage(page){
            stackView.push(Qt.resolvedUrl(page))
        }
    }


}



/*##^##
Designer {
    D{i:0;height:1080;width:412}
}
##^##*/
