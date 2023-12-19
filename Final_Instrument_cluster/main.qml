import QtQuick 2.0
import QtQuick.Window 2.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0
Window {
    id:root
    width: 400
    height: 1280
    visible: true
    title: "INSTRUMENT CLUSTER"


    Item {
           id: container
           width: 1280
           height: 400
           anchors.centerIn: parent
           rotation: -90





           Image {
                      source: "qrc:/Image/logo.png"
                      width: 350
                      height: 350
                      fillMode: Image.PreserveAspectFit
                      anchors.horizontalCenter: parent.horizontalCenter
                      y:25

                  }



           CircularGauge {
               style: CircularGaugeStyle {
                       needle: Rectangle {
                           y: outerRadius * 0.15
                           implicitWidth: outerRadius * 0.03
                           implicitHeight: outerRadius * 0.9
                           antialiasing: true
                           color: "darkblue"
                       }
               }


               value: 50
                maximumValue: 150
                width: 250
                height: 250
                x: 200
                y: 100


            }
          Rectangle{
              width: 250
              height: 250
              x: 850
              y: 100


             // Battery Body
              Rectangle {

                     width: 200
                     height: 100
                     color: "lightGray"
                     anchors.centerIn: parent
                     rotation: -90

                     // Battery Level
                     Rectangle {
                         width: (50/ 100) * 200  // Adjust based on your maximum battery level
                         height: 100
                         color: "navy"
                     }




              // color: "blue"
              // CircularGauge {
              //  anchors.centerIn: parent
              //  value: valueSource.speed
              //   maximumValue: 70


            }


}
    }

}


