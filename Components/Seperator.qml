import QtQuick 2.12
import "../Styles"

Item {
    property alias lineWidth: line.width

    Rectangle {
        id: line

        anchors.top: parent.top
        anchors.left: parent.left

        height: getActualY(1)

        gradient: Gradient {
            id: grd

            orientation: Qt.Horizontal

            GradientStop { id: grd1; position: 0.0; color: Styles.seperatorGradient1 }
            GradientStop { id: grd2; position: Styles.darkMode ? 0.0 : 0.3021; color: Styles.seperatorGradient2 }
            GradientStop { id: grd3; position: Styles.darkMode ? 0.7135 : 0.724; color: Styles.seperatorGradient3 }
            GradientStop { id: grd4; position: 1.0; color: Styles.seperatorGradient4 }
        }
    }

}
