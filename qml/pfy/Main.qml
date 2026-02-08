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
        id: activePalette
        colorGroup: SystemPalette.Active
    }

    Rectangle {
        id: screen
        width: window.width
        height: window.height
        color: activePalette.window

        Rectangle {
            id: sideBar
            width: 100
            height: parent.height
            color: "black"

            Text {
                width: parent.width
                text: "There are a variety of reasons to indulge in such astronomically aimless annoyances"
                color: activePalette.text
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
                    color: activePalette.accent
                    tileText: "Accent"
                }
                MosaicTile {
                    color: activePalette.mid
                    tileText: "Mid"
                }
                MosaicTile {
                    color: activePalette.base
                    tileText: "Base"
                }
                MosaicTile {
                    color: activePalette.button
                    tileText: "Button"
                }
                MosaicTile {
                    color: activePalette.buttonText
                    tileText: "Button Text"
                }
                MosaicTile {
                    color: activePalette.dark
                    tileText: "Dark"
                }
                MosaicTile {
                    color: activePalette.highlight
                    tileText: "Highlight"
                }
                MosaicTile {
                    color: activePalette.highlightedText
                    tileText: "Highlighted Text"
                }
                MosaicTile {
                    color: activePalette.light
                    tileText: "Light"
                }
                MosaicTile {
                    color: activePalette.mid
                    tileText: "Mid"
                }
                MosaicTile {
                    color: activePalette.midlight
                    tileText: "Mid Light"
                }
                MosaicTile {
                    color: activePalette.placeholderText
                    tileText: "Placeholder Text"
                }
                MosaicTile {
                    color: activePalette.shadow
                    tileText: "Shadow"
                }
                MosaicTile {
                    color: activePalette.text
                    tileText: "Text"
                }
                MosaicTile {
                    color: activePalette.window
                    tileText: "Window"
                }
                MosaicTile {
                    color: activePalette.windowText
                    tileText: "Window Text"
                }
            }
        }
    }
}
