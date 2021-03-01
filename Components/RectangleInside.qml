import QtQuick 2.0
import QtGraphicalEffects 1.12
import "../Styles"

Item {

    Rectangle {
        id: border

        anchors.left: parent.left
        anchors.top: parent.top

        width: parent.width
        height: parent.height
        radius: getActualD(18)

        visible: Styles.darkMode

        gradient: Gradient {
            id: grd
//            orientation: Qt.Horizontal

            GradientStop {id: gradient1; position: 1.0; color: Styles.dark3}
            GradientStop { id: gradient2;  position: 0.1388; color: Styles.darkMain}
        }
    }

    Rectangle {
        id: innerRct

        anchors.verticalCenter: border.verticalCenter
        anchors.horizontalCenter: border.horizontalCenter

        width: Styles.darkMode ? parent.width - getActualD(2) : parent.width
        height: Styles.darkMode ? parent.height - getActualD(2) : parent.height
        radius: getActualD(18)

        color: Styles.backgroundMain
    }

    InnerShadow {
        anchors.fill: innerRct
        visible: !Styles.darkMode
        radius: getActualD(30)
        samples: radius * 2 + 1
        horizontalOffset: getActualX(-5)
        verticalOffset: getActualY(-5)
        color: Styles.lightSecondary
        source: innerRct
    }

    InnerShadow {
        anchors.fill: innerRct
        radius: Styles.darkMode ? getActualD(18) : getActualD(8)
        samples: radius * 2 + 1
        horizontalOffset: getActualX(4)
        verticalOffset: getActualY(4)
        color: Styles.darkMode ? Styles.darkSecondary : Styles.applyOpacity(Styles.light4, "80")
        source: innerRct
    }

}
