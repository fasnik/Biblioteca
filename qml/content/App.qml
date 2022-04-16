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

import QtQuick
import QtQuick.Window

///import io.qt.textproperties

Window {
    id: window
    width: 800
    height: 600

    visible: true
    color: "#8baaaa"
    title: "Biblioteca"



    ScreenLeitor {
        id: leitorScreen
        width: 800
        height: 600
        visible: true

    }

    ScreenLivros {
        id: livrosScreen
        width: 800
        height: 600
        visible: false
    }

    ScreenTransacoes {
        id: transacoesScreen
        width: 800
        height: 600
        visible: false
    }

    Connections {
        target: backend
//        conversor de texto para bool
        function t2b(text){
            return text === "true" ? true : false
            }
//        alterna entre a telas disponíveis
        function onChangeView(state){
            leitorScreen.visible=t2b(state[0])
            livrosScreen.visible=t2b(state[1])
            transacoesScreen.visible=t2b(state[2])
        }
    }

}






/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
