import QtQuick 2.5
import QtQuick.Controls 1.4

/*
*   Name: Garrett Fleischer
*   Lab: 2 Splashscreen
*   Project: Lab2
*/

ApplicationWindow{
    visible: true
    width: 1280
    height: 720
    title: qsTr("Lab 2")

    // "Ok" dialog
    OkDialog{
        width: 250
        height: 150

        x: parent.width - width
        y: parent.height - height

        onDone: {
            visible = false
        }
    }


    // Custom dialog
    Dialog{
        width: 400
        height: 300

        TextRect{
            id: textRect
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width * 0.75
            height: parent.height * 0.75

            text: "I am a TextRect"
            color: button.status ? "blue" : "darkblue"
            textColor: "white"
            font.pointSize: 14
        }


        ClickButton{
            property bool status: false

            id: button
            anchors.top: textRect.bottom
            anchors.topMargin: 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 4
            anchors.horizontalCenter: parent.horizontalCenter
            width: textRect.width
            text: "Click"
            color: "darkred"
            textColor: "white"
            font.pointSize: 14



            onClicked: {
                status = !status;
            }

            onHoverEnter: {
                color = "red";
            }

            onHoverLeave: {
                color = "darkred";
            }
        }
    }
}
