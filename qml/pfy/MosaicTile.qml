import QtQuick
import QtQuick.Layouts


Rectangle {
    Layout.fillWidth: true
    Layout.fillHeight: true
    property string tileText: "Text"
    Text {
        anchors.centerIn: parent
        text: tileText
        color: "blue"
    }
}
