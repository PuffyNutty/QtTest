import QtQuick


Rectangle {
    id: box
    width: 100
    height: 100
    color: "steelblue"

    enum Position {
        Top,
        Right,
        Bottom,
        Left
    }

    property int position: ResizableRect.Position.Bottom

    states: [
        State {
            name: "top"
            when: box.position === ResizableRect.Position.Top
            AnchorChanges {
                target: box
                anchors.top: parent.top
                anchors.left: parent.left
            }
        },
        State {
            name: "right"
            when: box.position === ResizableRect.Position.Right
            AnchorChanges {
                target: box
                anchors.right: parent.right
                anchors.top: parent.top
            }
        },
        State {
            name: "bottom"
            when: box.position === ResizableRect.Position.Bottom
            AnchorChanges {
                target: box
                anchors.bottom: parent.bottom
                anchors.left: parent.left
            }
        },
        State {
            name: "left"
            when: box.position === ResizableRect.Position.Left
            AnchorChanges {
                target: box
                anchors.left: parent.left
                anchors.top: parent.top
            }
        }
    ]
}
