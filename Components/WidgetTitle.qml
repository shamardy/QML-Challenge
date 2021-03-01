import QtQuick 2.0
import "../Styles"

Item {

    property alias txtWidth: title.width
    property alias txtHeight: title.height
    property alias text: title.text
    property alias size: title.font.pixelSize

    Text {
        id: title

        anchors.top: parent.top
        anchors.left: parent.left

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(25)
        color: Styles.textColor2
    }

}
