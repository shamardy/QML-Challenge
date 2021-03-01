import QtQuick 2.12
import QtGraphicalEffects 1.12
import "../Styles"

Item {

    RectangleWidget {
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

        txtWidth: getActualX(80)
        txtHeight: getActualY(30)

        text: "Assets"
    }

    Rectangle {
        id: rctBkg

        anchors.left: parent.left
        anchors.leftMargin: getActualX(31)
        anchors.top: parent.top
        anchors.topMargin: getActualY(70)

        width: getActualX(240)
        height: getActualY(243.01)

        radius: (width + height) / 4

        color: Styles.backgroundMain
    }

    DropShadow {
        id: drp1

        anchors.fill: rctBkg
        horizontalOffset: Styles.darkMode ? getActualX(0) : getActualX(-6)
        verticalOffset: Styles.darkMode ? getActualY(15) : getActualY(-6)
        radius: Styles.darkMode ? getActualD(30): getActualD(16)
        samples: (radius * 2) + 1
        color: Styles.switchInnerShadow
        source: rctBkg
    }

    DropShadow {
        id: drp2

        anchors.fill: rctBkg
        horizontalOffset: Styles.darkMode ? getActualX(0) : getActualX(6)
        verticalOffset: Styles.darkMode ? getActualY(-15) : getActualY(6)
        radius: Styles.darkMode ? getActualD(30): getActualD(16)
        samples: (radius * 2) + 1
        color: Styles.dropShadowPie2
        source: rctBkg
    }

    Chart {

        anchors.verticalCenter: rctBkg.verticalCenter
        anchors.horizontalCenter: rctBkg.horizontalCenter

        width: getActualX(200.84)
        height: getActualY(200.84)

        onPaint: {
            doughnut([

                         {
                             value : 90,
                             color : "#FFB052"
                         },
                         {
                             value : 90,
                             color : "#41EAD4"
                         },
                         {
                             value : 60,
                             color : "#2278FA"
                         },
                         {
                             value : 70,
                             color : "#1BC8FF"
                         },
                         {
                             value: 30,
                             color: "#F6D171"
                         }
                         ,
                         {
                             value: 20,
                             color:"#E31A93"
                         }

                     ]);
        }
    }

    Chart {

        anchors.verticalCenter: rctBkg.verticalCenter
        anchors.horizontalCenter: rctBkg.horizontalCenter

        width: getActualX(200.84)
        height: getActualY(200.84)

        onPaint: {
            doughnut([

                         {
                             value : 90,
                             color : "#FFB052"
                         },
                         {
                             value : 90,
                             color : "#41EAD4"
                         },
                         {
                             value : 60,
                             color : "#2278FA"
                         },
                         {
                             value : 70,
                             color : "#1BC8FF"
                         },
                         {
                             value: 30,
                             color: "#F6D171"
                         }
                         ,
                         {
                             value: 20,
                             color:"#E31A93"
                         }

                     ]);
        }
    }

    Chart {
        id: innerChart

        anchors.verticalCenter: rctBkg.verticalCenter
        anchors.horizontalCenter: rctBkg.horizontalCenter

        width: getActualX(173)
        height: getActualY(173)

        onPaint: {
            doughnut([

                         {
                             value : 90,
                             color : "#FFB052"
                         },
                         {
                             value : 90,
                             color : "#41EAD4"
                         },
                         {
                             value : 60,
                             color : "#2278FA"
                         },
                         {
                             value : 70,
                             color : "#1BC8FF"
                         },
                         {
                             value: 30,
                             color: "#F6D171"
                         }
                         ,
                         {
                             value: 20,
                             color:"#E31A93"
                         }

                     ]);
        }
    }

    ColorOverlay {
        anchors.fill: innerChart
        source: innerChart
        color: "#48000000"
        transform:rotation
        antialiasing: true
    }

    RectangleInside {
        id: border

        anchors.left: parent.left
        anchors.leftMargin: getActualX(300)
        anchors.top: parent.top
        anchors.topMargin: getActualY(70)

        width: getActualX(420)
        height: getActualY(239)
    }

    ListModel {
        id: assets

        ListElement {
            sourceImg: "qrc:/Images/Coins/BTC.svg"
            amount: "0.0040341"
            name: "BTC"
            amountUSD: "3.3 USD"
            percentage: "+ 9.4 %"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/KMD.svg"
            amount: "23.4"
            name: "KMD"
            amountUSD: "12.87 USD"
            percentage: "+ 12 %"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/USDC.svg"
            amount: "0.493318"
            name: "USDC"
            amountUSD: "0.49 USD"
            percentage: "- 0.08 %"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/Dash.svg"
            amount: "0.023987"
            name: "DASH"
            amountUSD: "1.32 USD"
            percentage: "- 4.21 %"
        }

        ListElement {
            sourceImg: "qrc:/Images/Coins/ZCash.svg"
            amount: "1.1234422"
            name: "ZEC"
            amountUSD: "36.84 USD"
            percentage: "+ 2.1 %"
        }
    }

    ListView {
        id:lstAssets

        anchors.fill: border

        model: assets

        delegate: Item {

            width: lstAssets.width
            height: lstAssets.height / 5

            Image {
                id: coinLogo

                anchors.left: parent.left
                anchors.leftMargin: getActualX(22)
                anchors.verticalCenter: parent.verticalCenter

                width: getActualX(19)
                height: getActualY(19)

                source: sourceImg

                fillMode: Image.PreserveAspectFit
                smooth: true
            }


            Text {
                id: coinAmount

                anchors.left: parent.left
                anchors.leftMargin: getActualX(58)
                anchors.verticalCenter: parent.verticalCenter

                width: getActualX(116)
                height: getActualY(18)

                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter

                font.family: Styles.fontMrR.name
                font.pixelSize: getActualD(15)
                color: Styles.textColor2

                text: amount + " " + name
            }

            Text {
                id: coinType

                anchors.left: parent.left
                anchors.leftMargin: getActualX(220)
                anchors.verticalCenter: parent.verticalCenter

                width: getActualX(78)
                height: getActualY(18)

                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter

                font.family: Styles.fontMrR.name
                font.pixelSize: getActualD(15)
                color: Styles.textColor2

                text: amountUSD
            }

            Text {
                id: perc

                anchors.left: parent.left
                anchors.leftMargin: getActualX(333)
                anchors.verticalCenter: parent.verticalCenter

                width: getActualX(59)
                height: getActualY(18)

                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter

                font.family: Styles.fontMrR.name
                font.pixelSize: getActualD(15)
                color: (percentage.charAt(0) === "+") ? Styles.textColorPercentagePlus : Styles.textColorPercentageMinus

                text: percentage
            }

            Rectangle {
                id: line

                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: getActualX(2)

                visible: index !== 4

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
                    visible: index !== 4 && Styles.darkMode
                    anchors.fill: line
                    source: border
                    foregroundSource: line
                    mode: "average"
                }
        }
    }

}
