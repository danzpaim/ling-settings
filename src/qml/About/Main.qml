import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import CuteUI 1.0 as CuteUI
import Cute.Settings 1.0
import "../"

ItemPage {
    headerTitle: qsTr("About")

    About {
        id: about
    }

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

//            Image {
//                Layout.preferredWidth: 167
//                Layout.preferredHeight: 26
//                sourceSize: Qt.size(500, 76)
//                source: CuteUI.Theme.darkMode ? "qrc:/images/dark/logo.png" : "qrc:/images/light/logo.png"
//                Layout.alignment: Qt.AlignHCenter
//                visible: about.isCuteOS
//                asynchronous: true
//            }

            Label {
                text: qsTr("LTS").arg(about.prettyProductName)
                visible: !about.isCuteOS
                Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                color: CuteUI.Theme.disabledTextColor
            }

            Item {
                height: CuteUI.Units.largeSpacing * 2
            }

            RoundedItem {
                StandardItem {
                    key: qsTr("System Version")
                    value: about.version
                }

                StandardItem {
                    key: qsTr("openCute Version")
                    value: about.openCuteversion
                }

                StandardItem {
                    key: qsTr("System Type")
                    value: about.architecture
                }

                StandardItem {
                    key: qsTr("Kernel Version")
                    value: about.kernelVersion
                }

                StandardItem {
                    key: qsTr("Processor")
                    value: about.cpuInfo
                }

                StandardItem {
                    key: qsTr("RAM")
                    value: about.memorySize
                }

                StandardItem {
                    key: qsTr("Internal Storage")
                    value: about.internalStorage
                }

            }

            Item {
                height: CuteUI.Units.smallSpacing
            }

            StandardButton {
                text: ""
                Layout.fillWidth: true
                visible: about.isCuteOS
                onClicked: Qt.openUrlExternally("https://www.cuteos.cn/developer/")

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: CuteUI.Units.largeSpacing * 1.5
                    anchors.rightMargin: CuteUI.Units.largeSpacing * 1.5

                    Label {
                        text: qsTr("Open source software")
                    }

                    Item {
                        Layout.fillWidth: true
                    }

                    Label {
                        text: qsTr("→")
                    }
                }
            }
        }
    }
}
