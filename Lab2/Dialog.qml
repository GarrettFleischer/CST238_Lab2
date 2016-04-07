import QtQuick 2.0

Rectangle {
    property real  minimumDragX: parent.x
    property real  minimumDragy: parent.y
    property real  maximumDragX: parent.width - width
    property real  maximumDragY: parent.height - height

    border.width: 2
    radius: width * 0.05

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        drag.target: parent
        drag.maximumX: maximumDragX
        drag.maximumY: maximumDragY
        drag.minimumX: minimumDragX
        drag.minimumY: minimumDragy
    }
}
