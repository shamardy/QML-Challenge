import QtQuick 2.0
import QtGraphicalEffects 1.12
import "../Styles"

Item {

    property alias source: icon.source
    property alias iconWidth: icon.width
    property alias iconHeight: icon.height
    property alias dropShadowColor1: drp1.color
    property alias dropShadowHorizontalOffset1: drp1.horizontalOffset
    property alias dropShadowVerticalOffset1: drp1.verticalOffset
    property alias dropRadius1: drp1.radius
    property alias dropShadowColor2: drp2.color
    property alias dropShadowHorizontalOffset2: drp2.horizontalOffset
    property alias dropShadowVerticalOffset2: drp2.verticalOffset
    property alias dropRadius2: drp2.radius
    property var borderWidth: Styles.darkMode ? getActualD(1.5) : 0
    property var isBordered: false

    Rectangle {
        id: border

        anchors.top: parent.top
        anchors.left: parent.left

        visible: isBordered

        width: getActualX(40)
        height: width

        radius: width * 0.5

        gradient: Gradient {
            id: grd
//            orientation: Qt.Vertical

            GradientStop {id: gradient1; position: 0.599; color: Styles.dark3}
            GradientStop { id: gradient2;  position: 0.6567; color: Styles.rctWidgetBorderGradient2}
        }
    }

    Rectangle {
        id: rct

        anchors.fill: border
        anchors.margins: borderWidth

        radius: width * 0.5

        color: Styles.backgroundMain

        Image {
            id: icon

            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            width: getActualX(18)
            height: getActualY(22)

            source: "qrc:/Images/Bell_Icon.svg"

            fillMode: Image.PreserveAspectFit
            smooth: true
        }

        ColorOverlay {
            anchors.fill: icon
            source: icon
            color: Styles.textColor2
            transform:rotation
            antialiasing: true
        }
    }

    DropShadow {
        id: drp1

        anchors.fill: rct
        horizontalOffset: Styles.darkMode ? getActualX(0) : getActualX(8)
        verticalOffset: Styles.darkMode ? getActualY(15) : getActualY(8)
        radius: Styles.darkMode ? getActualD(30): getActualD(20)
        samples: Styles.darkMode ? getActualD(61): getActualD(41)
        color: Styles.iconDropShadow1
        source: rct
    }

    DropShadow {
        id: drp2

        anchors.fill: rct
        verticalOffset: getActualY(-15)
        visible: Styles.darkMode
        radius: getActualD(30)
        samples: getActualD(61)
        color: Styles.dark3
        source: rct
    }

}
