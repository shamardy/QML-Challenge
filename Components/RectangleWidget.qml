import QtQuick 2.12
import QtGraphicalEffects 1.12
import "../Styles"

Item {

    RectangleWithInnerBorder {
        id: rctBck

        anchors.top: parent.top
        anchors.left: parent.left

        rctWidth: parent.width
        rctHeight: parent.height

        radius: getActualD(18)

        borderWidth: getActualD(1.5)

        gradientOrientation: Qt.Vertical

        brd1Position: Styles.darkMode? 0.599 : 0
        brd1Color: Styles.borderGradient1

        brd2Position: Styles.darkMode ? 0.6567 : 1
        brd2Color: Styles.rctWidgetBorderGradient2

        dropShadow1: true
        dropShadow2: true
    }
}
