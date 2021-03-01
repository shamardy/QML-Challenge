import QtQuick 2.0
import QtGraphicalEffects 1.12
import "../Styles"

Item {

    RectangleWidget {
        id: rct

        anchors.top: parent.top
        anchors.left: parent.left

        width: getActualX(1560)
        height: getActualY(70)
    }

    Rectangle {
        id: outerCircle

        anchors.verticalCenter: rct.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: getActualX(19)

        width: getActualX(24)
        height: width
        radius: width * 0.5

        color: Styles.connectedOuter

        Rectangle {
            id: innerCircle

            anchors.fill: parent
            anchors.margins: getActualD(4)

            radius: getActualD(8)

            color: Styles.connectedInner
        }
    }

    Text {
        id: status

        anchors.verticalCenter: rct.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: getActualX(60)

        width: getActualX(83)
        height: getActualY(18)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter

        text: "Connected"

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(15)
        color: Styles.textColor2
    }

    SearchBar {
        id: srchBar

        anchors.top: parent.top
        anchors.topMargin: getActualY(15)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(800)
    }

    Icon {
        id: notifications

        anchors.top: parent.top
        anchors.topMargin: getActualY(15)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(1340)
    }

    RectangleWithInnerBorder {
        id: profilePic

        anchors.top: parent.top
        anchors.topMargin: getActualY(15)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(1400)

        rctWidth: getActualX(40)
        rctHeight: getActualY(40)
        radius: (rctWidth + rctHeight) * 0.25
        brd1Position: 0
        brd1Color: Styles.profileBorderGradient1
        brd2Position: Styles.darkMode ? 0.7448 : 1
        brd2Color: Styles.profileBorderGradient2
        innerShadow: false
        border: true
        borderWidth: getActualD(2)
        innerColor: Styles.profileInnerColor

        dropShadow1: Styles.darkMode ? false : true
        dropShadowColor1: Styles.lightSecondary
        dropShadowHorizontalOffset1: getActualX(-6)
        dropShadowVerticalOffset1: getActualY(-6)
        dropRadius1: getActualD(16)
        dropShadow2: Styles.darkMode ? false : true
        dropShadowColor2: Styles.light4
        dropShadowHorizontalOffset2: getActualX(6)
        dropShadowVerticalOffset2: getActualY(6)
        dropRadius2: getActualD(16)
    }



    Image {
        id: iconSteve

        anchors.top: parent.top
        anchors.topMargin: getActualY(17)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(1402)

        sourceSize.width: getActualX(36)
        sourceSize.height: getActualY(36)

        source: "qrc:/Images/Steve.png"

        fillMode: Image.PreserveAspectCrop
        smooth: true
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
        }
    }

    Rectangle {
        id: mask

        width: getActualX(36)
        height: getActualY(36)
        radius: (width + height) * 0.25
        visible: false
    }

    Text {
            id: name

            anchors.verticalCenter: rct.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: getActualX(1459)

            width: getActualX(77)
            height: getActualY(18)

            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter

            text: "n2okpride"

            font.family: Styles.fontMrR.name
            font.pixelSize: getActualD(15)
            color: Styles.textColor2
        }


}
