import QtQuick 2.12
import QtGraphicalEffects 1.12
import "../Styles"

Item {
    property var selectedIndex: 0

    RectangleWidget {
        anchors.top: parent.top
        anchors.left: parent.left

        width: getActualX(1560)
        height: getActualY(498)
    }

    WidgetTitle {
        id: title

        anchors.top: parent.top
        anchors.topMargin: getActualY(30)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(22)

        txtWidth: getActualX(71)
        txtHeight: getActualY(30)

        text: "Chart"
    }

    Icon {
        id: icon

        anchors.top: parent.top
        anchors.topMargin: getActualY(19)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(1029)

        source: "qrc:/Images/Chart_Icon.svg"
    }

    WidgetTitle {
        id: capTitle

        anchors.top: parent.top
        anchors.topMargin: getActualY(30)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(1100)

        txtWidth: getActualX(208)
        txtHeight: getActualY(30)

        text: "Coin Market Cap"
    }

    RectangleInside {
        id: rctChart

        anchors.top: parent.top
        anchors.topMargin: getActualY(78)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(40)

        width: getActualX(1018)
        height: getActualY(380)

    }

    Chart {
        id: lineChart

        anchors.verticalCenter: rctChart.verticalCenter
        anchors.horizontalCenter: rctChart.horizontalCenter

        width: getActualX(1018)
        height: getActualY(380)

        onPaint: {
            line({
                     labels : ["Text","Text","Text","Text","Text","Text","Text","Text","Text","Text","Text","Text","Text","Text",""],
                     datasets : [
                         {
                             fillColor : "rgba(34, 120, 250, 0.1)",
                             strokeColor : "#2278FA",
                             pointColor : "#2278FA",
                             pointStrokeColor : "transparent",
                             data : [45+20,37+20,23+20,55+20,63+20,40+20,30+20,33+20,32+20,17+20,20+20,25+20,24+20,45+20,40+20]
                         },
                         {
                             fillColor : "rgba(41, 203, 151, 0.1)",
                             strokeColor : "#41EAD4",
                             pointColor : "#41EAD4",
                             pointStrokeColor : "transparent",
                             data : [37+20,30+20,33+20,40+20,55+20,56+20,55+20,40+20,41+20,38+20,43+20,60+20,62+20,79+20,80+20]
                         }
                     ]
                 });
        }
    }

    WidgetTitle {
        id: revenue

        anchors.top: rctChart.top
        anchors.topMargin: getActualY(267)
        anchors.left: rctChart.left
        anchors.leftMargin: getActualX(45)

        txtWidth: getActualX(64)
        txtHeight: getActualY(11)
        size: getActualD(9)

        text: "Total Revenue"
    }

    RevenueText {
        anchors.left: parent.left
        anchors.leftMargin: getActualX(84)
        anchors.top: parent.top
        anchors.topMargin: getActualY(383)

        green: true
        amount: "$ 8391.23"
        duration: "Last 7 Days"
    }

    RevenueText {
        anchors.left: parent.left
        anchors.leftMargin: getActualX(227)
        anchors.top: parent.top
        anchors.topMargin: getActualY(383)

        green: false
        amount: "$ 2014.13"
        duration: "Last 14 Days"
    }

    RevenueText {
        anchors.left: parent.left
        anchors.leftMargin: getActualX(367)
        anchors.top: parent.top
        anchors.topMargin: getActualY(383)

        green: true
        amount: "$ 4210.10"
        duration: "Last Month"
    }

    RevenueText {
        anchors.left: parent.left
        anchors.leftMargin: getActualX(506)
        anchors.top: parent.top
        anchors.topMargin: getActualY(383)

        green: true
        amount: "$ 391.23"
        duration: "Last 3 Months"
    }

    Text {
        id: txtOrders

        anchors.left: parent.left
        anchors.leftMargin: getActualX(648)
        anchors.top: parent.top
        anchors.topMargin: getActualY(381.5)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(9)
        color: Styles.textColor2

        text: "3 Orders"
    }

    Text {
        id: txtTotalOrders

        anchors.left: parent.left
        anchors.leftMargin: getActualX(647)
        anchors.top: parent.top
        anchors.topMargin: getActualY(399)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(16)
        color: Styles.textColor2

        text: "$ 91.23"
    }

    Text {
        id: txtTotal

        anchors.left: parent.left
        anchors.leftMargin: getActualX(747)
        anchors.top: parent.top
        anchors.topMargin: getActualY(399)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(15)
        color: Styles.textColor2

        text: "$ 21591.23"
    }

    Rectangle {
        id: verticalLine

        anchors.left: parent.left
        anchors.leftMargin: getActualX(213.5)
        anchors.top: parent.top
        anchors.topMargin: getActualY(91.5)

        width: getActualX(2)
        height: getActualY(340.5)

        color: "#41EAD4"
    }

    RectangleWidget {
        id:popupWidget

        anchors.top: parent.top
        anchors.topMargin: getActualY(118)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(80)

        width: getActualX(468)
        height: getActualY(70)
    }

    Image {
        id: iconBTC

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(18)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(15)

        width: getActualX(40)
        height: getActualY(40)

        fillMode: Image.PreserveAspectFit
        smooth: true

        source: "qrc:/Images/Coins/BTC2.svg"
    }

    Text {
        id: txtBTC

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(78)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(20)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(15)
        color: Styles.textColor2

        text: "0.0040341 BTC"
    }

    Text {
        id: txtBTCUSD

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(78)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(39)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(9)
        color: Styles.textColor2

        text: "6400 USD"
    }

    Rectangle {
        id: verticalSperator

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(223.5)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(17)

        width: getActualX(1)
        height: getActualY(36)

        color: Styles.darkMode ? Styles.applyOpacity(Styles.textdark1, "42") : "#3C5368"
    }

    Text {
        id: txtUSD

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(248)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(19)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(15)
        color: Styles.textColor2

        text: "3.3 USD"
    }

    Text {
        id: txt24H

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(248)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(39)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(9)
        color: Styles.textColor2

        text: "+ 0.123 USD 24H"
    }

    Rectangle {
        id: verticalSperator2

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(355)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(17)

        width: getActualX(1)
        height: getActualY(36)

        color: Styles.darkMode ? Styles.applyOpacity(Styles.textdark1, "42") : "#3C5368"
    }

    Text {
        id: txt1

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(374)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(20)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(9)
        color: Styles.textColor2

        text: "24H"
    }

    Image {
        id: arrow

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(402)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(26)

        width: getActualX(5.95)
        height: getActualY(2.975)

        source: "qrc:/Images/Arrow_Up.svg"

        fillMode: Image.PreserveAspectFit
        smooth: true
    }

    ColorOverlay {
        anchors.fill: arrow
        source: arrow
        color: Styles.textColorPercentagePlus
        transform:rotation
        antialiasing: true
    }

    Text {
        id: percent1

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(417)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(20)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(9)
        color: Styles.textColorPercentagePlus

        text: "9.4 %"
    }



    Text {
        id: txt2

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(380)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(39)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(9)
        color: Styles.textColor2

        text: "7D"
    }

    Image {
        id: arrowDown

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(402)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(45)

        width: getActualX(5.95)
        height: getActualY(2.975)

        source: "qrc:/Images/Arrow_Down.svg"

        fillMode: Image.PreserveAspectFit
        smooth: true
    }

    ColorOverlay {
        anchors.fill: arrowDown
        source: arrowDown
        color: Styles.textColorPercentageMinus
        transform:rotation
        antialiasing: true
    }

    Text {
        id: percent2

        anchors.left: popupWidget.left
        anchors.leftMargin: getActualX(417)
        anchors.top: popupWidget.top
        anchors.topMargin: getActualY(39)

        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(9)
        color: Styles.textColorPercentageMinus

        text: "3.4 %"
    }

    RectangleInside {
        id: border

        anchors.left: parent.left
        anchors.leftMargin: getActualX(1102)
        anchors.top: parent.top
        anchors.topMargin: getActualY(80)

        width: getActualX(416)
        height: getActualY(376)
    }

    ListModel {
        id: assets

        ListElement {
            sourceImg: "qrc:/Images/Coins/BTC1.svg"
            name: "BTC"
            amountYuan: "¥ 721,882"
            percentage: "-4.66%"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/BCH.svg"
            name: "BCH"
            amountYuan: "¥ 48,676"
            percentage: "+0.38%"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/ETH.svg"
            name: "ETH"
            amountYuan: "¥ 22,370"
            percentage: "+0.45%"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/LTC.svg"
            name: "LTC"
            amountYuan: "¥ 5,788.5"
            percentage: "-0.23%"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/ETC.svg"
            name: "ETC"
            amountYuan: "¥ 1,660.7"
            percentage: "-0.09%"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/XRP.svg"
            name: "XRP"
            amountYuan: "¥ 50.839"
            percentage: "+0.66%"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/FCT.svg"
            name: "FCT"
            amountYuan: "¥ 534.68"
            percentage: "+8.47%"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/LSK.svg"
            name: "LSK"
            amountYuan: "¥ 321.14"
            percentage: "-0.47%"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/XEM.svg"
            name: "XEM"
            amountYuan: "¥ 10.604"
            percentage: "-1.07%"
        }
    }

    ListView {
        id:lstAssets

        anchors.fill: border

        model: assets

        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: border
        }

        delegate: Item {
            id: itmDlg

            width: lstAssets.width
            height: lstAssets.height / 9

            MouseArea {
                anchors.fill: itmDlg
                onClicked: selectedIndex = index
            }

            Rectangle {
                anchors.left: parent.left
                anchors.leftMargin: getActualX(1)
                anchors.top: parent.top

                width: parent.width
                height: parent.height - getActualY(3)

                visible: (index === selectedIndex)

                gradient: Gradient {
                    orientation: Qt.Horizontal

                    GradientStop { position: 0.0; color: Styles.selectedSideTabGradient1 }
                    GradientStop { position: 1.0; color: Styles.applyOpacity("#292e33", "03")}
                }

            }

            Image {
                id: coinLogo

                anchors.left: parent.left
                anchors.leftMargin: getActualX(9)
                anchors.verticalCenter: parent.verticalCenter

                width: getActualX(18)
                height: getActualY(18)

                source: sourceImg

                fillMode: Image.PreserveAspectFit
                smooth: true
            }


            Text {
                id: coinName

                anchors.left: parent.left
                anchors.leftMargin: getActualX(40.86)
                anchors.verticalCenter: parent.verticalCenter

                width: getActualX(30)
                height: getActualY(16)

                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter

                font.family: Styles.fontMrR.name
                font.pixelSize: getActualD(13)
                color: Styles.textColor2

                text: name
            }

            Text {
                id: coinType

                anchors.left: parent.left
                anchors.leftMargin: getActualX(274)
                anchors.verticalCenter: parent.verticalCenter

                width: getActualX(60)
                height: getActualY(16)

                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter

                font.family: Styles.fontMrR.name
                font.pixelSize: getActualD(13)
                color: Styles.textColor2

                text: amountYuan
            }

            Text {
                id: perc

                anchors.left: parent.left
                anchors.leftMargin: getActualX(359)
                anchors.verticalCenter: parent.verticalCenter

                width: getActualX(46)
                height: getActualY(16)

                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter

                font.family: Styles.fontMrR.name
                font.pixelSize: getActualD(13)
                color: (percentage.charAt(0) === "+") ? Styles.textColorPercentagePlus : Styles.textColorPercentageMinus

                text: percentage
            }

            Rectangle {
                id: line

                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: getActualX(2)

                visible: index !== 8

                height: getActualY(3)
                width: getActualX(416)

                gradient: Gradient {

                    orientation: Qt.Vertical

                    GradientStop { id: grd1; position: Styles.darkMode ? 0.6615 : 0; color: Styles.darkMode ? "#373A43" : "#2BDBDBDB" }
                    GradientStop { id: grd2; position: Styles.darkMode ? 0.3385 : 0.3021; color: Styles.darkMode ? "#D4000000" : "#FBFCFF" }
                    GradientStop { id: grd3; position: Styles.darkMode ? 0.3385 : 0.724; color: Styles.darkMode ? "#D4000000" : "#FBFCFF";}
                    GradientStop { id: grd4; position: Styles.darkMode ? 0.3385 : 1; color: Styles.darkMode ? "#D4000000" : "#1A466077" }
                }
            }

            Blend {
                    visible: index !== 8 && Styles.darkMode
                    anchors.fill: line
                    source: border
                    foregroundSource: line
                    mode: "average"
                }
        }
    }



//    Text {
//        id: zero

//        anchors.left: rctChart.left
//        anchors.top: rctChart.top
//        anchors.topMargin: getActualY(346.43)

//        width: getActualX(30.37)
//        height: getActualY(11)

//        horizontalAlignment: Text.AlignRight
//        verticalAlignment: Text.AlignVCenter

//        font.family: Styles.fontMrR.name
//        font.pixelSize: getActualD(9)
//        color: Styles.textColor1
//    }

}
