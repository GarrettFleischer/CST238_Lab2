import QtQuick 2.0

Dialog{
    id: root
    property alias text: textRect.text
    property alias textColor: textRect.textColor
    property alias button: button
    property alias buttonTextColor: textRect.textColor

    signal done

    TextRect{
        id: textRect
        anchors.top: parent.top
        anchors.topMargin: 4
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 0.75
        height: parent.height * 0.75

        text: "Press \"Ok\" to continue..."
        color: parent.color
        font.pointSize: 14

        border.width: 0
    }


    ClickButton{
        id: button
        anchors.top: textRect.bottom
        anchors.topMargin: 4
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 4
        anchors.horizontalCenter: parent.horizontalCenter
        width: textRect.width
        text: "Ok"
        color: "darkgrey"
        font.pointSize: 14

        onClicked: root.done()

        onHoverEnter: {
            color = "darkgrey";
        }

        onHoverLeave: {
            color = "grey";
        }
    }
}
