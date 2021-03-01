import QtQuick 2.12
import QtGraphicalEffects 1.12
import "../Styles"

Item {

    property bool selected: false
    property alias source: iconDashboard.source
    property alias text: txt.text
    property alias sperator: sprtr.visible

    Rectangle {
        id: rctDashboard

        anchors.top: parent.top
        anchors.left: parent.left

        width: getActualX(239)
        height: getActualY(61)
        radius: getActualD(18)

        gradient: Gradient {
            orientation: Qt.Horizontal

            GradientStop { position: 0.0; color: selected? Styles.selectedSideTabGradient1 : Styles.transparentMain }
            GradientStop { position: 1.0; color: selected? Styles.selectedSideTabGradient2 : Styles.transparentMain }
        }


    }

    Image {
        id: iconDashboard

        anchors.left: rctDashboard.left
        anchors.leftMargin: getActualX(26.5)
        anchors.top: rctDashboard.top
        anchors.topMargin: getActualY(22.5)

        width: getActualX(28)
        height: getActualY(21)

        fillMode: Image.PreserveAspectFit
        smooth: true
    }

    ColorOverlay {
        anchors.fill: iconDashboard
        source: iconDashboard
        color: selected? Styles.sidebarIconSelected : Styles.sidebarIcon
        transform:rotation
        antialiasing: true
    }

    Text {
        id: txt

        anchors.verticalCenter: iconDashboard.verticalCenter
        anchors.left: iconDashboard.right

        width: getActualX(112)
        height: getActualY(19)

        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter

        font.family: selected? Styles.fontMrB.name : Styles.fontMrR.name
        font.bold: selected? true : false
        font.pixelSize: getActualD(15)
        color: selected ? Styles.lightSecondary : Styles.textColor1
    }

    Seperator {
        id: sprtr

        anchors.top: rctDashboard.bottom
        anchors.left: parent.left

        visible: false

        lineWidth: getActualX(210)
    }

}
