

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import Biblioteca 1.0
import QtQuick.Controls 6.2

ListView {
    id: listViewLeitor
    anchors.fill: parent
    focus: true
    model: model_leitor
    delegate: ItemDelegate {
        text: nome + " |" + matricula
        anchors.left: parent.left
        anchors.right: parent.right
        font.letterSpacing: 0.5

        padding: 12
        font.pointSize: 12

        display: AbstractButton.TextOnly
        onClicked: listViewLeitor.currentIndex = index
        highlighted: true
    }
    highlight: Rectangle {
        color: "#551e29d9"
        radius: 3
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:800;width:800}
}
##^##*/

//    Component{
//        id:list_delegate
//        Item {
//            width: parent.width;
//            height: 20;
//            Text {
//                text: qsTr(nome + " " + matricula)
//                width: parent.width;
//                MouseArea{
//                    anchors.fill: parent;
//                    hoverEnabled: true;
//                    onClicked: list_leitor.currentIndex = index
//                }
//            }
//        }
//    }
//    delegate: list_delegate

