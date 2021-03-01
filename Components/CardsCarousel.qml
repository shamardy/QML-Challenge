import QtQuick 2.0
import QtGraphicalEffects 1.12
import QtQuick.Layouts 1.12
import "../Styles"

Item {

    Rectangle {
        id: bkg

        anchors.left: parent.left
        anchors.top: parent.top

        width: parent.width
        height: parent.height

        radius: getActualD(18)

        RadialGradient {
            anchors.fill: parent
            source: parent

            horizontalRadius: getActualX(390)
            verticalRadius: getActualY(239)

            horizontalOffset: - horizontalRadius / 2
            verticalOffset: verticalRadius / 2

            gradient: Gradient {
                GradientStop { position: 0.0594; color: Styles.cardGradient1 }
                GradientStop { position: 0.5104; color: Styles.cardGradient2 }
                GradientStop { position: 1; color: Styles.cardGradient3 }
            }
        }

    }

    Image {
        id: imgLogo

        anchors.left: parent.left
        anchors.leftMargin: getActualX(17)
        anchors.top: parent.top
        anchors.topMargin: getActualY(9.08)

        width: getActualX(187.43)
        height: getActualY(51.38)

        fillMode: Image.PreserveAspectFit
        smooth: true

        source: Styles.logoSide
    }

    DropShadow {
        id: drpLogo

        anchors.fill: imgLogo
        horizontalOffset: getActualX(4.26)
        verticalOffset: getActualY(4.26)
        radius: getActualD(5.32)
        samples: (radius * 2) + 1
        color: Styles.cardDropShadow1
        source: imgLogo
    }

    Image {
        id: img3Dots

        anchors.left: parent.left
        anchors.leftMargin: getActualX(345.74)
        anchors.top: parent.top
        anchors.topMargin: getActualY(21.24)

        width: getActualX(22.97)
        height: getActualY(5.72)

        fillMode: Image.PreserveAspectFit
        smooth: true

        source: "qrc:/Images/3Dots_Icon.svg"
    }

    DropShadow {
        id: drpDots

        anchors.fill: img3Dots
        horizontalOffset: getActualX(4.26)
        verticalOffset: getActualY(4.26)
        radius: getActualD(5.32)
        samples: (radius * 2) + 1
        color: Styles.cardDropShadow1
        source: img3Dots
    }

    Text {
        id: title

        anchors.top: parent.top
        anchors.topMargin: getActualX(66.52)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(81.48)

        width: getActualX(99.56)
        height: getActualY(26.83)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        text: "Total Balance"

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(12.78)
        color: Styles.lightSecondary
    }

    Item {
        id: amount

        anchors.top: parent.top
        anchors.topMargin: getActualX(92)
        anchors.left: parent.left

        width: getActualX(390)
        height: getActualY(50)

        Item {
            id: txt

            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            width: dollar.implicitWidth + num.implicitWidth + name.implicitWidth
            height: num.implicitHeight

            Text {
                id: dollar

                text: "$ "
                anchors.left: parent.left
                anchors.top: parent.top

                font.family: Styles.fontMrEL.name
                font.pixelSize: getActualD(46.85)
                color: Styles.lightSecondary
            }

            Text {
                id: num

                anchors.left: dollar.right
                anchors.verticalCenter: parent.verticalCenter

                text: "16,874"

                font.family: Styles.fontMrR.name
                font.pixelSize: getActualD(46.85)
                color: Styles.lightSecondary
            }

            Text {
                id: name

                anchors.left: num.right
                anchors.bottom: txt.bottom
                anchors.bottomMargin: getActualY(6)

                text: " USD"

                font.family:  Styles.fontMrEL.name
                font.pixelSize: getActualD(20.23)
                color: Styles.lightSecondary
            }

        }

        DropShadow {
            id: txtDrp

            anchors.fill: txt
            horizontalOffset: getActualX(4.26)
            verticalOffset: getActualY(4.26)
            radius: getActualD(5.32)
            samples: (radius * 2) + 1
            color: Styles.cardDropShadow1
            source: txt
        }
    }


}
