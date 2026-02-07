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

                Rectangle {
                    color: systemPalette.accent
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.alternateBase
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.base
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.button
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.buttonText
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.dark
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.highlight
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.highlightedText
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.light
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.mid
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.midlight
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.placeholderText
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.shadow
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.text
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.window
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: systemPalette.windowText
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }
        }
    }
}
