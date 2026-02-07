import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: "Resizable Rectangle"

    SystemPalette {
        id: systemPalette
        colorGroup: SystemPalette.Active
    }

    Rectangle {
        id: screen
        width: window.width
        height: window.height
        color: systemPalette.window

        Rectangle {
            id: sideBar
            width: 100
            height: parent.height
            color: "black"

            Text {
                width: parent.width
                text: "There are a variety of reasons to indulge in such astronomically aimless annoyances"
                color: systemPalette.text
                clip: true
            }

            Rectangle {
                color: "lightgray"
                width: 10
                height: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.right
                ResizeHandle {
                    cursorShape: Qt.SplitHCursor
                    target: parent.parent
                    allowHorizontalResize: true
                    minSize: 50
                    maxSize: screen.width - 50
                    anchors.fill: parent
                }
            }
        }

        Rectangle {
            id: mainView
            anchors.left: sideBar.right
            anchors.right: screen.right
            anchors.bottom: screen.bottom
            anchors.top: screen.top
            color: "black"

            GridLayout {
                anchors.fill: parent
                columns: 4
                rows: 4
                columnSpacing: 0
                rowSpacing: 0

                MosaicTile {
                    color: systemPalette.accent
                    tileText: "Accent"
                }
                MosaicTile {
                    color: systemPalette.alternateBase
                    tileText: "Alternate Base"
                }
                MosaicTile {
                    color: systemPalette.base
                    tileText: "Base"
                }
                MosaicTile {
                    color: systemPalette.button
                    tileText: "Button"
                }
                MosaicTile {
                    color: systemPalette.buttonText
                    tileText: "Button Text"
                }
                MosaicTile {
                    color: systemPalette.dark
                    tileText: "Dark"
                }
                MosaicTile {
                    color: systemPalette.highlight
                    tileText: "Highlight"
                }
                MosaicTile {
                    color: systemPalette.highlightedText
                    tileText: "Highlighted Text"
                }
                MosaicTile {
                    color: systemPalette.light
                    tileText: "Light"
                }
                MosaicTile {
                    color: systemPalette.mid
                    tileText: "Mid"
                }
                MosaicTile {
                    color: systemPalette.midlight
                    tileText: "Mid Light"
                }
                MosaicTile {
                    color: systemPalette.placeholderText
                    tileText: "Placeholder Text"
                }
                MosaicTile {
                    color: systemPalette.shadow
                    tileText: "Shadow"
                }
                MosaicTile {
                    color: systemPalette.text
                    tileText: "Text"
                }
                MosaicTile {
                    color: systemPalette.window
                    tileText: "Window"
                }
                MosaicTile {
                    color: systemPalette.windowText
                    tileText: "Window Text"
                }
            }
        }
    }
}
