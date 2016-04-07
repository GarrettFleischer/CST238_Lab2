import QtQuick 2.0

Rectangle{
    id: root
    property alias text: rectText.text
    property alias textColor: rectText.color
    property alias font: rectText.font

    border.width: 2

    Text{
        id: rectText
        anchors.centerIn: root
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
