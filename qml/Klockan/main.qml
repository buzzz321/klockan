import QtQuick 2.0

Rectangle {
    width: 160
    height: 36
    color: "#272822"

    function getTime(){
        var klockan = new Date();
        return Qt.formatTime(klockan,"HH:mm");
    }

    Text {
        id: klocka
        text: qsTr(getTime())
        color: "#aaaaaa"
        anchors.centerIn: parent
    }
    Timer {
        interval: 1000; running: true; repeat: true
        onTriggered: klocka.text = getTime()
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }
}
