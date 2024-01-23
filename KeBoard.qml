import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic
Item {
    id: keyboard
    property color color: "blue"
    signal myButton(string message)
    Button{
        id : topleftButton
        x:0
        y:0
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "-"
        palette.buttonText: "blue"
        onClicked: myButton("10")
    }

    Button{
        id : topRightButton
        x:2*keyboard.width/3
        y:0
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "-"
        palette.buttonText: "blue"
        onClicked: myButton("11")
    }
    Button{
        id : goUp
        x:1.25*keyboard.width/3
        y:0
        width: keyboard.width/6
        height: keyboard.height/12
        text: "^"
        onClicked: myButton("12")
    }


    Button{
        id : so1
        x:0
        y:2*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "1"
        onClicked: myButton("1")
    }

    Button{
        id : so2
        x:keyboard.width/3
        y:2*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "2 abc"
        onClicked: myButton("2")
    }
    Button{
        id : so3
        x:2*keyboard.width/3
        y:2*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "3 def"
        onClicked: myButton("3")
    }

    Button{
        id : so4
        x:0
        y:3*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "4 ghi"
        onClicked: myButton("4")
    }

    Button{
        id : so5
        x:keyboard.width/3
        y:3*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "5 jkl"
        onClicked: myButton("5")
    }
    Button{
        id : so6
        x:2*keyboard.width/3
        y:3*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "6 mno"
        onClicked: myButton("6")
    }
    Button{
        id : so7
        x:0
        y:4*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "7 pqrs"
        onClicked: myButton("7")
    }

    Button{
        id : so8
        x:keyboard.width/3
        y:4*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "8 tuv"
        onClicked: myButton("8")
    }
    Button{
        id : so9
        x:2*keyboard.width/3
        y:4*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "9 wxyz"
        onClicked: myButton("9")
    }
    Button{
        id : so10
        x:0
        y:5*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "* +"
        onClicked: myButton("*")
    }

    Button{
        id : so0
        x:keyboard.width/3
        y:5*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "0 _"
        onClicked: myButton("0")
    }
    Button{
        id : so11
        x:2*keyboard.width/3
        y:5*keyboard.height/6
        width: keyboard.width/3.1
        height: keyboard.height/6.6
        text: "#"
        onClicked: myButton("#")
    }

}
