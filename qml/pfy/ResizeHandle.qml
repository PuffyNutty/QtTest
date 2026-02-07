import QtQuick


MouseArea {
    id: resizeHandle
    width: parent.width
    height: parent.height

    property Rectangle target: parent
    property bool allowHorizontalResize: false
    property bool allowVerticalResize: false
    property bool resizeDirectionInverted: false
    property int minSize: 100
    property int maxSize: screen.width - 100

    property int __resizeDirection: 0
    property point __mousePositionUponPress: Qt.point(null, null)
    property point __targetRectSizeUponPress: Qt.point(null, null)

    onPressed: {
        __resizeDirection = 2 * -resizeDirectionInverted + 1
        __mousePositionUponPress = mapToItem(screen, mouseX, mouseY)
        __targetRectSizeUponPress = Qt.point(target.width, target.height)
    }

    onPositionChanged: {
        var mousePositionCurrent = mapToItem(screen, mouseX, mouseY)
        if (allowHorizontalResize) {
           target.width = Math.max(minSize, Math.min(maxSize, __targetRectSizeUponPress.x + __resizeDirection * (mousePositionCurrent.x - __mousePositionUponPress.x)))
        }
        if (allowVerticalResize) {
           target.height = Math.max(minSize, Math.min(maxSize, __targetRectSizeUponPress.y + __resizeDirection * (mousePositionCurrent.y - __mousePositionUponPress.y)))
        }
    }
}
