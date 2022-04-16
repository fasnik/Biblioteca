

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
    width: 500
    height: 600
    visible: true
    color: "#8baaaa"
    radius: 0
    border.color: "#d5000000"
    border.width: 0
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

        ColumnLayout {
            id: columnLayout
            Layout.columnSpan: 1
            Layout.margins: 10
            Layout.leftMargin: 50
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.preferredHeight: 100
            Layout.preferredWidth: 200

            Label {
                id: label1
                text: "Transações"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.fillWidth: true
            }

            Button {
                id: button
                text: qsTr("Emprestimo")
                highlighted: true
                Layout.margins: 40
                Layout.fillHeight: false
                Layout.fillWidth: true
            }


            Button {
                id: button1
                text: qsTr("Devoluçao")
                highlighted: true
                Layout.margins: 40
                Layout.fillHeight: false
                Layout.fillWidth: true
            }

        }
    }

    ToolSeparator {
        id: toolSeparator
        x: 302
        width: 5
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        hoverEnabled: false
        enabled: false
        spacing: 0
        bottomPadding: 0
        topPadding: 0
        padding: 0
        anchors.bottomMargin: 4
        anchors.topMargin: 4
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75;height:600;width:800}
}
##^##*/

