import QtQuick // Basic QML types (rect, text, etc)

import "Main.js" as GameLogic


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
        Item {
            id: gameCanvas
            property int score: 0
            property int blockSize: 40
            width: parent.width - (parent.width % blockSize)
            height: parent.height - (parent.height % blockSize)
            anchors.centerIn: parent
            MouseArea {
                anchors.fill: parent
                onClicked: GameLogic.handleClick()
            }
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
            onClicked: GameLogic.startNewGame()
        }
        Text {
            id: scoreboard
            anchors.right: parent.right
            anchors.left: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Score: "
            font: "Avenir"
            horizontalAlignment: Text.AlignHCenter
            color: activePalette.windowText
        }
    }
}
