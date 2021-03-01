import QtQuick 2.12
import QtGraphicalEffects 1.12
import "../Styles"

Item {
    id: control

    property alias swtchWidth: rctBck.rctWidth
    property alias swtchHeight: rctBck.rctHeight
    property alias radius: rctBck.radius
    property alias borderWidth: rctBck.borderWidth
    property bool on
    signal toggled

    RectangleWithInnerBorder {
        id: rctBck

        anchors.top: parent.top
        anchors.left: parent.left

        innerShadow: true
    }

    Rectangle {
        id: circle

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: on ?  swtchWidth - width - borderWidth : borderWidth
        anchors.topMargin: borderWidth

        width: swtchHeight - 2 * borderWidth
        height: width
        radius: width*0.5

        color: Styles.backgroundMain
    }

    DropShadow {
        anchors.fill: circle
        horizontalOffset: 0
        verticalOffset: getActualY(5)
        radius: getActualD(7.0)
        samples: getActualD(15)
        color: Styles.switchDropShadow1
        source: circle
    }

    DropShadow {
        anchors.fill: circle
        horizontalOffset: 0
        verticalOffset: getActualY(-5)
        radius: getActualD(7.0)
        samples: getActualD(15)
        color: Styles.switchDropShadow2
        source: circle
    }

    MouseArea {
        anchors.top: parent.top
        anchors.left: parent.left

        height:swtchHeight
        width: swtchWidth

        onClicked: {
            toggled();
        }
    }
}
