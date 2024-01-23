 import QtQuick
import QtQuick.Controls

Window {
    id: window1
    width: 200
    height: 600
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        id: screen1
        width: 200
        height: 195
        radius: 10
        color: "black"
        border.color: "blue"
        border.width: 2
        Text{
            id:rectText
            color: "white"
            text:""
            anchors.centerIn: parent
        }

        Connections {
            target: myPhone
            function onMysignal(newText) {
                rectText.text= newText
            }
        }
    }

    Connections{
        target:myPhone
        function onQuit() {
            console.log("onQuit")
            Qt.quit()
        }
    }
    Connections{
        target:myKeyboard
        function onMyButton(message)
        {
            myPhone.onMenuClicked(message)
        }
    }

    KeBoard{
        id:myKeyboard
        x:0
        y:200
        width:200
        height: 400

    }


}
