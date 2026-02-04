// Import basic QML types (Rectangle, Text, etc)
import QtQuick

Rectangle {
    id: page // Id to access it late
    width: 320
    height: 420 // Self explanatory
    color: "lightgray" // Self explanatory

    Text {
        id: helloText // Id to access it in other files
        text:  "Hello World" // Self explanatory
        y: 30 // Distance from the top of the rectangle.
        anchors.horizontalCenter: page.horizontalCenter // Set x coordinate such that it is aligned with the rectangle's center.
        font.pointSize: 24
        font.bold: true // Self explanatory
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
        Cell {cellColor: "black"; onClicked: helloText.color = cellColor}
    }
}
