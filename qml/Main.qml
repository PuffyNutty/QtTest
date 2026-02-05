import QtQuick // Basic QML types (rect, text, etc)
import QtQuick.Controls // Interactive QML types (Button, Slider, etc)


Rectangle {
    id: screen
    width: 400
    height: 600

    SystemPalette {
        id: activePalette
    }

    Item {
        id: backgroundContainer
        width: parent.width
        anchors.top: parent.top
        anchors.bottom: toolBar.top 
        Image {
            id: background
            anchors.fill: parent
            source: "pics/background.png"
            fillMode: Image.Stretch
        }
    }

    Rectangle {
        id: toolBar
        width: parent.width
        height: 100
        anchors.bottom: screen.bottom
        color: activePalette.window
        Button {
            height: parent.height * 0.8
            anchors.right: parent.horizontalCenter
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            text: "New Game"
            onClicked: console.log("Starting new game...")
        }
        Text {
            id: scoreboard
            anchors.right: parent.right
            anchors.left: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Score: "
            horizontalAlignment: Text.AlignHCenter
            color: activePalette.windowText
        }
    }
}
