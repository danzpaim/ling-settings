import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

import CuteUI 1.0 as CuteUI
import "../"

ItemPage {
    // headerTitle: qsTr("Update")

    Scrollable {
        anchors.fill: parent
        contentHeight: layout.implicitHeight

        ColumnLayout {
            id: layout
            anchors.fill: parent
            spacing: CuteUI.Units.largeSpacing * 2
        }
    }
}
