import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.12
import "../Styles"

Item {

    RectangleWithInnerBorder {
        id: rctBck

        anchors.top: parent.top
        anchors.left: parent.left

        rctWidth: getActualX(519)
        rctHeight: getActualY(40)

        radius: getActualD(116)

        borderWidth: getActualD(2)

        brd1Position: 1
        brd2Position: 0.1388

        innerShadow: true
    }

    Image {
        id: iconSearch

        anchors.left: parent.left
        anchors.leftMargin: getActualX(14)
        anchors.top: parent.top
        anchors.topMargin: getActualY(13)

        width: getActualX(16)
        height: getActualY(16)

        source: "qrc:/Images/Search_Icon.svg"

        fillMode: Image.PreserveAspectFit
        smooth: true
    }

    ColorOverlay {
        anchors.fill: iconSearch
        source: iconSearch
        color: Styles.textColor2
        transform:rotation
        antialiasing: true
    }

    TextField  {
        anchors.top: parent.top
        anchors.left: iconSearch.right
        anchors.leftMargin: getActualX(5)

        width: getActualX(480)
        height: getActualY(40)

        //        font.pixelSize: 22
        //        focus: true

        style: TextFieldStyle {
            font.family: Styles.fontMrB.name
            textColor: Styles.textColor1
            font.pixelSize: getActualD(15)
            background: Rectangle {
                color: Styles.transparentMain
                implicitWidth: getActualX(519)
                implicitHeight: getActualY(40)
            }
        }
    }
}
