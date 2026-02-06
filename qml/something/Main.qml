import QtQuick


Rectangle {
    id: window

    SystemPalette {
        id: window_activePalette
    }

    width: 500
    height: 500
    color: window_activePalette.window
    
    Rectangle {
        id: window_slider
        anchors.top: parent.top
        width: parent.width
        height: 100
        color: window_activePalette.accent

        MouseArea {
            id: window_slider_resizeHandle
            anchors.bottom: parent.bottom
            width: parent.width
            height: 10
            cursorShape: Qt.OpenHandCursor

            property int startHeight: 0
            property int startMouseY: 0

            onPressed: {
                startHeight = window_slider.height
                startMouseY = mapToItem(parent, mouseX, mouseY).y
            }
            onPositionChanged: {
                const newMouseY = mapToItem(parent, mouseX, mouseY).y
                parent.height = Math.max(50, startHeight + (newMouseY - startMouseY))
            }
        }
    }
}
