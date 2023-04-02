//demo
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

import CuteUI 1.0 as CuteUI
import "../"

ItemPage {
    headerTitle: qsTr("Dev")

    Scrollable {
        anchors.fill: parent
        contentHeight: layout.implicitHeight

        ColumnLayout {
            id: layout
            anchors.fill: parent
            
            Item {
                height: CuteUI.Units.largeSpacing
            }

            Image {
                Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                width: 400
                height: 87
                sourceSize: Qt.size(width, height)
                source: CuteUI.Theme.darkMode ? "qrc:/images/dark/logo.png" : "qrc:/images/light/logo.png"
            }

            Item {
                height: CuteUI.Units.smallSpacing
            }
        }
    }
}
