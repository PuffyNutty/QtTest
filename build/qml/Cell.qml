import QtQuick

Item { // Item is the most basic visual QML type and used as container for other types.
    id: container // Unique id to reference the root item by.
    property alias cellColor: rectangle.color // Property accessible from outside Item scope, meaning we can initialise this Cell with different colors.
                                              // It is an alias for the rectangle's color.
    signal clicked(cellColor: color) // Communicate with other QML files when this cell is clicked.

    width: 40; height: 25

    Rectangle { // The visual part of the cell is just a colored rectangle.
        id: rectangle
        border.color: page.color
        anchors.fill: parent // Specify the rectangle to share the same dimensions as the parent.
    }

    MouseArea {
        anchors.fill: parent // Specify the mouse area to share the same dimensions as the parent
        onClicked: container.clicked(container.cellColor) // QML 'MouseArea' type has the "clicked" signal built-in. We wrap it to our custom signal
                                                          // 'onClicked'.
    }
}
