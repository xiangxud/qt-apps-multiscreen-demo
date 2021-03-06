/****************************************************************************
**
** Copyright (C) 2017 Pelagicore AG
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Neptune IVI UI.
**
** $QT_BEGIN_LICENSE:GPL-EXCEPT$
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
** General Public License version 3 as published by the Free Software
** Foundation with exceptions as appearing in the file LICENSE.GPL3-EXCEPT
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
** SPDX-License-Identifier: GPL-3.0
**
****************************************************************************/

import QtQuick 2.1
import utils 1.0

UIElement {
    id: root
    hspan: 2
    vspan: 2

    property string source
    property bool fit: false

    Image {
        id: defaultIcon
        width: root.fit ? root.width : undefined
        height: root.fit ? root.height : undefined
        anchors.centerIn: parent
        source: root.source ? root.source : ""
        opacity: root.enabled ? 1.0 : 0.5
        asynchronous: true
        fillMode: root.fit ? Image.PreserveAspectFit : Image.Pad
        Behavior on opacity { NumberAnimation { duration: 250 } }
    }
}
