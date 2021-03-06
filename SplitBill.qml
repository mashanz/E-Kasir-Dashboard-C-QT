import QtQuick 2.9
import QtQuick.Window 2.0
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    id: splitBillPayment
    visible: true
    width: 1280
    height: 720
    title: qsTr("Split Bill / Payment")

    property variant appStyle: Style {
        id: style
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        PageBill {

        }

        PagePayment {

        }

    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        height: 40
        background: Rectangle {
                color: appStyle.background
        }

        TabButton {
            Text {
                text: qsTr("Split Bill")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: tabBar.currentIndex == 0 ? appStyle.button : appStyle.background
                font.pixelSize: 18
            }
            background: Rectangle {
                color: tabBar.currentIndex == 0 ? appStyle.background : appStyle.header1
                radius: 0
            }
            anchors.bottom: parent.bottom
            height: 40
        }

        TabButton {
            Text {
                text: qsTr("Split Payment")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: tabBar.currentIndex == 1 ? appStyle.button : appStyle.background
                font.pixelSize: 18
            }
            background: Rectangle {
                color: tabBar.currentIndex == 1 ? appStyle.background : appStyle.header1
                radius: 0
            }
            anchors.bottom: parent.bottom
            height: 40
        }
    }
}
