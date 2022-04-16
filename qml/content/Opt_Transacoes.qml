

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

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation1
                onFinished: rectangle.state = ""
                loops: 1
                running: true
                duration: 1000
                to: 1000
                from: 0
            }
        ]
        enabled: true
        endFrame: 1000
        startFrame: 0

        KeyframeGroup {
            target: rowLayout
            property: "state"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: "State1"
                frame: 505
            }

            Keyframe {
                value: ""
                frame: 1000
            }
        }

        KeyframeGroup {
            target: gridLayout
            property: "state"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: "State1"
                frame: 505
            }

            Keyframe {
                value: ""
                frame: 1000
            }
        }

        KeyframeGroup {
            target: label
            property: "state"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: "State1"
                frame: 505
            }

            Keyframe {
                value: ""
                frame: 1000
            }
        }

        KeyframeGroup {
            target: _026bookmark
            property: "state"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: "State1"
                frame: 505
            }

            Keyframe {
                value: ""
                frame: 1000
            }
        }

        KeyframeGroup {
            target: btn_leitor
            property: "state"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: "State1"
                frame: 505
            }

            Keyframe {
                value: ""
                frame: 1000
            }
        }

        KeyframeGroup {
            target: btn_livros
            property: "state"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: "State1"
                frame: 505
            }

            Keyframe {
                value: ""
                frame: 1000
            }
        }

        KeyframeGroup {
            target: btn_transacoes
            property: "state"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: "State1"
                frame: 505
            }

            Keyframe {
                value: ""
                frame: 1000
            }
        }

        KeyframeGroup {
            target: columnLayout
            property: "state"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: "State1"
                frame: 505
            }

            Keyframe {
                value: ""
                frame: 1000
            }
        }

        KeyframeGroup {
            target: toolSeparator
            property: "state"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: "State1"
                frame: 505
            }

            Keyframe {
                value: ""
                frame: 1000
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
