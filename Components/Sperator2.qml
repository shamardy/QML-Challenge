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

            GradientStop { id: grd1; position: 0.0; color: Styles.sperator2Gradient1 }
            GradientStop { id: grd2; position: 0.5104; color: Styles.sperator2Gradient2 }
            GradientStop { id: grd3; position: 1; color: Styles.sperator2Gradient1 }
        }
    }

}
