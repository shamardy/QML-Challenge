import QtQuick 2.0
import QtGraphicalEffects 1.12
import "../Styles"

Item {

    property alias amount: txtAmount.text
    property bool green: true
    property alias duration: txtDuration.text

    Text {
        id: txtAmount

        anchors.left: parent.left
        anchors.top: parent.top

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(13)
        color: green ? Styles.textColorPercentagePlus : Styles.textColorPercentageMinus
    }

    Image {
        id: arrow

        anchors.left: parent.left
        anchors.leftMargin: getActualX(75)
        anchors.top: parent.top
        anchors.topMargin: getActualY(9)

        width: getActualX(5.95)
        height: getActualY(2.975)

        source: green ? "qrc:/Images/Arrow_Up.svg" : "qrc:/Images/Arrow_Down.svg"

        fillMode: Image.PreserveAspectFit
        smooth: true
    }

    ColorOverlay {
        anchors.fill: arrow
        source: arrow
        color: green ? Styles.textColorPercentagePlus : Styles.textColorPercentageMinus
        transform:rotation
        antialiasing: true
    }

    Text {
        id: txtDuration

        anchors.left: parent.left
        anchors.leftMargin: getActualX(1)
        anchors.top: parent.top
        anchors.topMargin: getActualY(18)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(9)
        color: Styles.textColor2
    }

}
