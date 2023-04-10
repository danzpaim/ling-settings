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

            RoundedItem {
                StandardItem {
                    key: qsTr("Update Log")
                }

                StandardItem {
                    key: qsTr("[新增功能]\n* 新增Terminal深色模式颜色\n* 新增：设置-‘开发测试内容’模块\n[版本]\n* 此版本为内部测试版，不会正式发布\n* 版本号改为CuteOS 23.05.1\n[优化]\n* 优化终端显示效果\n[修复]\n* 修复了安装CuteOS后无法打开firefox的bug\n* 修复了安装软件包时报错的问题\n* 修复其他不明显BUG\n--\nby\nFloating dream\n2023-04-02")
                }
            }

            RoundedItem {
                StandardItem {
                    key: qsTr("Update Push")
                }

                StandardItem {
                    key: qsTr("[内测软件更新方式]\n1.您可以向开发者发送邮件以获取最新可用的Cute软件包\n2.您还可以从以下链接前往网站进行下载")
                }
            }

            RoundedItem {
                StandardItem {
                    key: qsTr("Contributor List")
                }

                StandardItem {
                    key: qsTr("Floating dream(cuteos@foxmail.com)")
                }
            }

            Item {
                height: CuteUI.Units.smallSpacing
            }

            Button {
                text: qsTr("Cute software updates available")
                flat: true
                Layout.alignment: Qt.AlignHCenter
                visible: control.error
                onClicked: {
                Qt.openUrlExternally("https://www.cuteos.cn/update_cute/")
                }
            }
        }
    }
}
