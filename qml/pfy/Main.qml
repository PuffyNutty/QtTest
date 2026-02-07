import QtQuick
import QtQuick.Window

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: "Resizable Rectangle"

    Rectangle {
        id: screen
        width: window.width
        height: window.height

        Rectangle {
            width: parent.width
            height: 100
            color: "steelblue"
            anchors.bottom: parent.bottom

            Rectangle {
                color: "lightgray"
                width: 100
                height: 10
                anchors.verticalCenter: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                ResizeHandle {
                    target: parent.parent
                    allowVerticalResize: true
                    minSize: 50
                    maxSize: screen.height - 50
                    resizeDirectionInverted: true
                    anchors.fill: parent
                }
            }
        }
    }
}
