// Import basic QML types (Rectangle, Text, etc)
import QtQuick

Rectangle {
    property var bgColor: Qt.rgba(0.1, 0.1, 0.1, 1.0)
    property var textAnimationTimeMS: 1000

    id: page // Id to access it late
    width: 500
    height: 500 // Self explanatory
    color: bgColor // Self explanatory

    MouseArea {
        id: textMouseArea
        anchors.fill: parent
    }

    Text {
        id: helloText // Id to access it in other files
        text:  "Hello World" // Self explanatory
        color: "white"
        y: 30 // Distance from the top of the rectangle.
        anchors.horizontalCenter: page.horizontalCenter // Set x coordinate such that it is aligned with the rectangle's center.
        font.pointSize: 24
        font.bold: true // Self explanatory

        states: State {
            name: "down"
            when: textMouseArea.pressed == true
            PropertyChanges {
                helloText {
                    rotation: 180
                    color: "purple"
                }
            }
            AnchorChanges {
                target: helloText
                anchors.bottom: page.bottom
            }
        }

        transitions: Transition {
            from: ""
            to: "down"
            reversible: true
            ParallelAnimation {
                AnchorAnimation {
                    duration: textAnimationTimeMS
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    properties: "rotation"
                    duration: textAnimationTimeMS
                    easing.type: Easing.InOutQuad
                }
                ColorAnimation {
                    duration: textAnimationTimeMS
                }
            }
        }
    }

    Grid {
        id: colorPicker
        x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
        rows: 2; columns: 3; spacing: Int32Array

        Cell {cellColor: "red"; onClicked: helloText.color = cellColor}
        Cell {cellColor: "yellow"; onClicked: helloText.color = cellColor}
        Cell {cellColor: "green"; onClicked: helloText.color = cellColor}
        Cell {cellColor: "steelblue"; onClicked: helloText.color = cellColor}
        Cell {cellColor: "blue"; onClicked: helloText.color = cellColor}
        Cell {cellColor: "white"; onClicked: helloText.color = cellColor}
    }
}
