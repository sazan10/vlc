
/*****************************************************************************
 * Copyright (C) 2020 VLC authors and VideoLAN
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * ( at your option ) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/
import QtQuick
import Qt5Compat.GraphicalEffects

import "qrc:///style/"

Item {
    id: root

    property alias cached: primaryShadow.cached
    property alias source: primaryShadow.source

    property alias primaryColor: primaryShadow.color
    property alias primaryVerticalOffset: primaryShadow.verticalOffset
    property alias primaryHorizontalOffset: primaryShadow.horizontalOffset
    property alias primaryBlurRadius: primaryShadow.radius

    property alias secondaryColor: secondaryShadow.color
    property alias secondaryVerticalOffset: secondaryShadow.verticalOffset
    property alias secondaryHorizontalOffset: secondaryShadow.horizontalOffset
    property alias secondaryBlurRadius: secondaryShadow.radius

    DropShadow {
        id: primaryShadow

        anchors.fill: parent
        horizontalOffset: 0
        spread: 0
        color: Qt.rgba(0, 0, 0, .22)
    }

    DropShadow {
        id: secondaryShadow

        anchors.fill: parent
        source: primaryShadow.source
        horizontalOffset: 0
        spread: 0
        color: Qt.rgba(0, 0, 0, .18)
        cached: root.cached
    }
}
