import QtQuick
import QtQuick.Layouts


Rectangle {
    Layout.fillWidth: true
    Layout.fillHeight: true
    property string tileText: "Text"
    Text {
        anchors.fill: parent
        text: tileText
        color: "blue"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        clip: true
    }
}
