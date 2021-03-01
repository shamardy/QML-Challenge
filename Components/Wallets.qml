import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12
import "../Styles"

Item {

    RectangleWidget {
        id: rct

        anchors.top: parent.top
        anchors.left: parent.left

        width: getActualX(760)
        height: getActualY(352)
    }

    WidgetTitle {
        id: title

        anchors.top: parent.top
        anchors.topMargin: getActualY(26)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(22)

        txtWidth: getActualX(93)
        txtHeight: getActualY(30)

        text: "Wallets"
    }

    CardsCarousel {
        id: walletCards

        anchors.top: parent.top
        anchors.topMargin: getActualX(71)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(40)

        width: getActualX(390)
        height: getActualY(239)
    }

    Icon {
        id: arrowLeft

        anchors.top: parent.top
        anchors.topMargin: getActualY(174)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(20)

        source: "qrc:/Images/Arrow_Left.svg"
        iconWidth: getActualX(6)
        iconHeight: getActualY(12)
        dropShadowColor1: Styles.iconDropShadow2
        dropShadowHorizontalOffset1: getActualX(8)
        dropShadowVerticalOffset1: getActualY(8)
        dropRadius1: getActualD(20)
        dropShadowColor2: Styles.iconDropShadow3
        dropShadowHorizontalOffset2: getActualX(-8)
        dropShadowVerticalOffset2: getActualY(-8)
        dropRadius2: getActualD(15)

        isBordered: Styles.darkMode ? true : false
    }



    Icon {
        id: arrowRight

        anchors.top: parent.top
        anchors.topMargin: getActualY(174)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(410)

        source: "qrc:/Images/Arrow_Right.svg"
        iconWidth: getActualX(6)
        iconHeight: getActualY(12)
        dropShadowColor1: Styles.iconDropShadow2
        dropShadowHorizontalOffset1: getActualX(8)
        dropShadowVerticalOffset1: getActualY(8)
        dropRadius1: getActualD(20)
        dropShadowColor2: Styles.iconDropShadow3
        dropShadowHorizontalOffset2: getActualX(-8)
        dropShadowVerticalOffset2: getActualY(-8)
        dropRadius2: getActualD(15)

        isBordered: Styles.darkMode ? true : false
    }

    Rectangle {
        id: innerRct

        anchors.left: parent.left
        anchors.leftMargin: getActualX(469)
        anchors.top: parent.top
        anchors.topMargin: getActualY(70)

        visible: !Styles.darkMode

        width: getActualX(251)
        height: getActualY(239)
        radius: getActualD(18)

        color: Styles.lightMain
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
        visible: !Styles.darkMode
        radius: getActualD(8)
        samples: radius * 2 + 1
        horizontalOffset: getActualX(4)
        verticalOffset: getActualY(4)
        color: Styles.applyOpacity(Styles.light4, "80")
        source: innerRct
    }

    ColumnLayout {
        anchors.left: parent.left
        anchors.leftMargin: getActualX(547)
        anchors.top: parent.top
        anchors.topMargin: getActualY(90)

        width: getActualX(36)
        height: getActualY(202)

        Text {

            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop

            font.family: Styles.fontMrB.name
            font.pixelSize: getActualD(17)
            color: Styles.textColor2
            text: "1H"
        }

        Text {

            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop

            font.family: Styles.fontMrB.name
            font.pixelSize: getActualD(17)
            color: Styles.textColor2
            text: "24H"
        }

        Text {

            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop

            font.family: Styles.fontMrB.name
            font.pixelSize: getActualD(17)
            color: Styles.textColor2
            text: "7D"
        }

        Text {

            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop

            font.family: Styles.fontMrB.name
            font.pixelSize: getActualD(17)
            color: Styles.textColor2
            text: "YTD"
        }
    }

    ColumnLayout {
        anchors.left: parent.left
        anchors.leftMargin: getActualX(603)
        anchors.top: parent.top
        anchors.topMargin: getActualY(90)

        width: getActualX(39)
        height: getActualY(202)

        Text {

            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop

            font.family: Styles.fontMrR.name
            font.pixelSize: getActualD(17)
            color: Styles.textColorPercentagePlus
            text: "0.5%"
        }

        Text {

            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop

            font.family: Styles.fontMrR.name
            font.pixelSize: getActualD(17)
            color: Styles.textColorPercentageMinus
            text: "3.4%"
        }

        Text {

            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop

            font.family: Styles.fontMrR.name
            font.pixelSize: getActualD(17)
            color: Styles.textColorPercentageMinus
            text: "3.4%"
        }

        Text {

            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop

            font.family: Styles.fontMrR.name
            font.pixelSize: getActualD(17)
            color: Styles.textColorPercentagePlus
            text: "0.5%"
        }
    }

    Sperator2 {
        anchors.left: parent.left
        anchors.leftMargin: getActualX(490)
        anchors.top: parent.top
        anchors.topMargin: getActualY(138)

        lineWidth: getActualX(210)
    }

    Sperator2 {
        anchors.left: parent.left
        anchors.leftMargin: getActualX(490)
        anchors.top: parent.top
        anchors.topMargin: getActualY(190)

        lineWidth: getActualX(210)
    }

    Sperator2 {
        anchors.left: parent.left
        anchors.leftMargin: getActualX(490)
        anchors.top: parent.top
        anchors.topMargin: getActualY(242)

        lineWidth: getActualX(210)
    }

}
