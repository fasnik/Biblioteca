/****************************************************************************
**
** Copyright (C) 2021 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of Qt Quick Studio Components.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.15
import QtQuick.Controls 6.2
import Biblioteca 1.0
import QtQuick.Layouts 6.0
import "pages"

Rectangle {
    id: rectangle
    visible: true
    color: "#ffffff"


    GridLayout {
        id: gridLayout
        anchors.fill: parent
        columnSpacing: 20
        rows: 1
        columns: 2

        AppMenu {
            id: leffMenu
            color: Constants.transparent
            Layout.preferredWidth: 280
            Layout.rowSpan: 1
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: false
            Layout.fillHeight: true


        }

        StackView {
            id: stackView
            Layout.rightMargin: 0
            Layout.margins: 0
            Layout.rowSpan: 1
            Layout.columnSpan: 1
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            clip: true
            initialItem:
                Component {
                id: initialOnStack
                Opt_Leitor{
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter

                }
            }

        }
    }

    Connections {
        target: backend

    }











}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.25;height:600;width:800}D{i:1}
}
##^##*/
