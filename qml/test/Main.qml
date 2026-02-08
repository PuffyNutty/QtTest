import QtQuick
import QtQuick.Controls

ApplicationWindow {
    title: "Split View Test"
    width: 800
    height: 600
    visible: true

    Rectangle {
        id: screen
        anchors.centerIn: parent
        width: parent.width - 100
        height: parent.width - 100

        SplitView {
            anchors.fill: parent

            Rectangle {
                color: "steelblue"
                SplitView.minimumWidth: 100
                Text {
                    text: "Left"
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                    color: "white"
                }
            }

            Rectangle {
                SplitView.minimumWidth: 100
                color: "seagreen"
                Text {
                    text: "Right"
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                    color: "White"
                }
            }
        }
    }
}
