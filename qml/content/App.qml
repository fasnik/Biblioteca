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
    width: 1920
    height: 1080
    visible: true
    color: "#ffffff"
    radius: 0
    // Constants.width

    AppMenu {
        id: leffMenu
        x: 0
        width: 412
        visible: true
        color: Constants.transparent
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0

    }

    StackView {
        id: stackView
        x: 524
        y: -16
        width: 1332
        anchors.left: leffMenu.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 76
        anchors.topMargin: 76
        padding: 60
        anchors.leftMargin: 92
        clip: true
        initialItem:
            Component {
                id: initialOnStack
                Opt_Leitor{
                }
            }

    }



    Connections {
        target: backend

    }








}



//}






/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}D{i:1}D{i:2}
}
##^##*/
