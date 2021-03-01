import QtQuick 2.12
import QtGraphicalEffects 1.12
import "../Styles"

Item {
    id: control

    property alias rctWidth: border.width
    property alias rctHeight: border.height
    property alias radius: border.radius
    property alias brd1Position: gradient1.position
    property alias brd1Color: gradient1.color
    property alias brd2Position: gradient2.position
    property alias brd2Color: gradient1.color
    property bool innerShadow: false
    property var innerShadowRadius: getActualD(15.0)
    property var innerShadowHorizontalOffset:getActualX(4)
    property var innerShadowVerticalOffset:getActualY(4)
    property alias dropShadowColor1: drp1.color
    property alias dropShadowHorizontalOffset1: drp1.horizontalOffset
    property alias dropShadowVerticalOffset1: drp1.verticalOffset
    property alias dropRadius1: drp1.radius
    property alias dropShadowColor2: drp2.color
    property alias dropShadowHorizontalOffset2: drp2.horizontalOffset
    property alias dropShadowVerticalOffset2: drp2.verticalOffset
    property alias dropRadius2: drp2.radius
    property alias innerShadowColor: rctInner.color
    property alias gradientOrientation: grd.orientation
    property var border: true
    property var borderWidth
    property bool dropShadow1: false
    property bool dropShadow2: false
    property alias innerColor: rctInner.color

    Rectangle {
        id: border

        anchors.top: parent.top
        anchors.left: parent.left

        visible: border

        gradient: Gradient {
            id: grd
            orientation: Qt.Vertical

            GradientStop {id: gradient1; position: 0.1388; color: Styles.borderGradient1}
            GradientStop { id: gradient2;  position: 1.0; color: Styles.backgroundMain}
        }
    }
    Rectangle {
        id: rctInner

        anchors.fill: border
        anchors.margins: borderWidth

        color: Styles.backgroundMain

        radius: control.radius - borderWidth
    }

    InnerShadow {
        anchors.fill: rctInner
        visible: innerShadow
        radius: innerShadowRadius
        samples: radius * 2 + 1
        horizontalOffset: innerShadowHorizontalOffset
        verticalOffset: innerShadowVerticalOffset
        color: Styles.switchInnerShadow
        source: rctInner
    }

    DropShadow {
        id: drp1

        anchors.fill: rctInner
        visible: dropShadow1
        horizontalOffset: Styles.darkMode ? getActualX(8) : getActualX(6)
        verticalOffset: Styles.darkMode ? getActualY(8) : getActualY(6)
        radius: Styles.darkMode ? getActualD(20): getActualD(16)
        samples: (radius * 2) + 1
        color: Styles.rctWidgetDropShadow1
        source: rctInner
    }

    DropShadow {
        id: drp2

        anchors.fill: rctInner
        visible: dropShadow2
        horizontalOffset: Styles.darkMode ? getActualX(-8) : getActualX(-6)
        verticalOffset: Styles.darkMode ? getActualY(-8) : getActualY(-6)
        radius: Styles.darkMode ? getActualD(15): getActualD(33)
        samples: (radius * 2) + 1
        color: Styles.rctWidgetDropShadow2
        source: rctInner
    }
}
