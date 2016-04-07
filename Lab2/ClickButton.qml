import QtQuick 2.0

Rectangle{
    id: root
    property alias text: buttonText.text
    property alias font: buttonText.font
    property alias textColor: buttonText.color

    signal clicked
    signal hoverEnter
    signal hoverLeave

    radius: width * 0.05

    Text {
        id: buttonText
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.centerIn: root
    }

    MouseArea {
        id: mouseArea
        anchors.fill: root
        hoverEnabled: true

        onClicked: root.clicked()
        onEntered: root.hoverEnter()
        onExited: root.hoverLeave()
    }
}
