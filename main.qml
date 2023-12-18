import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    width: 400
    height: 1280
    visible: true
    title: qsTr("Hello World")

    Text {
        text: "Hello..."
        anchors.centerIn: parent
    }
}
