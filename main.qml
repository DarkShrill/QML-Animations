import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Window 2.11
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.11
import QtQuick.Dialogs 1.2

Window {
    visible: true
    width: Screen.width /4
    height: Screen.height/2
    title: qsTr("QML Animations")

    property bool completed: false

    Rectangle{
        id: rect_1
        width: parent.width
        height: parent.height/10
        color: "#00bfff"

        Behavior on width{
            NumberAnimation { duration: 2000; easing.type: Easing.OutCirc;}
        }
        Behavior on y{
            NumberAnimation { duration: 1000; easing.type: Easing.OutCirc;}
        }

        Behavior on color{
            ColorAnimation{duration:1000;}
        }


        RotationAnimator {id:rotationEffect;target: rect_1;from: 0;to: 360*5;duration: 1000;running: false}
    }

    Rectangle{
        id: rect_2
        width: parent.width
        height: parent.height/10
        y:parent.height/10
        color: "red"
        visible: true

        Behavior on width{
            NumberAnimation { duration: 2000; easing.type: Easing.OutCirc;}
        }
        Behavior on y{
            NumberAnimation { duration: 1000; easing.type: Easing.OutCirc;}
        }

        Behavior on color{
            ColorAnimation{duration:1000;}
        }


        RotationAnimator {id:rotationEffect2;target: rect_2;from: 0;to: 360*5;duration: 1000;running: false}
    }

    Rectangle{
        id: rect_3
        width: parent.width
        height: parent.height/5
        color: "red"
        visible: false
    }

    Timer{
        interval: 2000
        repeat: true
        onTriggered: {
            if(completed === false){
                rect_1.width = rect_1.width/5
                rect_1.y = parent.height*4/5
                rotationEffect.running = true
                rect_1.color = "#9932cc"

                //----------------------------------
                completed = true
                //----------------------------------

                rect_2.width = rect_2.width/5
                rect_2.y = (parent.height*4/5)-(parent.height/10)
                rotationEffect2.running = true
                rect_2.color = "#AA3245"
            }else{
                rect_1.width = rect_1.width*5
                rect_1.y = 0
                rotationEffect.running = true
                rect_1.color = "#00bfff"

                //----------------------------------
                completed = false
                //----------------------------------

                rect_2.width = rect_2.width*5
                rect_2.y = parent.height/10
                rotationEffect2.running = true
                rect_2.color = "red"
            }
        }
        running: true

    }
}
