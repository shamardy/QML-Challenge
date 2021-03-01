import QtQuick 2.12
import "../Styles"

Item {

    Rectangle {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left

        width: getActualX(304)
        //        height: getActualY(1080)

        radius: getActualD(18)

        gradient: Gradient {
            orientation: Qt.Horizontal

            GradientStop { position: 0.0; color: Styles.sideBarGradient1 }
            GradientStop { position: 1.0; color: Styles.sideBarGradient2 }
        }

        //        border.color : "#2B2F48"

        //        border.width : 2

    }

    Image {
        id: imgLogo

        anchors.left: parent.left
        anchors.leftMargin: getActualX(77.47)
        anchors.top: parent.top
        anchors.topMargin: getActualY(48)

        width: getActualX(176.53)
        height: getActualY(112.48)

        //        height: control.height * 0.605
        //        sourceSize.height: height

        fillMode: Image.PreserveAspectFit
        smooth: true

        source: Styles.logoMain
    }

    Seperator {
        anchors.top: parent.top
        anchors.topMargin: getActualY(199)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(52)

        lineWidth: getActualX(210)
    }

    Text {
        anchors.top: parent.top
        anchors.topMargin: getActualY(209)
        anchors.horizontalCenter: imgLogo.horizontalCenter

        text: "V. AtomicDEX PRO alpha v.1.1"
        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(9)
        color: Styles.textColor1
        wrapMode: Text.Wrap
    }

    SideBarButton {
        id: sbbDashboard

        anchors.top: parent.top
        anchors.topMargin: getActualY(293.5)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(64.5)

        selected: true
        source: "qrc:/Images/Dashboard_Icon.svg"
        text: "Dashboard"
    }

    SideBarButton {
        id: sbbWallet

        anchors.top: parent.top
        anchors.topMargin: getActualY(354.5)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(64.5)

        sperator: true
        selected: false
        source: "qrc:/Images/Wallet_Icon.svg"
        text: "Wallet"
    }

    SideBarButton {
        id: sbbDEX

        anchors.top: parent.top
        anchors.topMargin: getActualY(416.5)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(64.5)

        sperator: true
        selected: false
        source: "qrc:/Images/DEX_Icon.svg"
        text: "DEX"
    }

    SideBarButton {
        id: sbbNews

        anchors.top: parent.top
        anchors.topMargin: getActualY(478.5)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(64.5)

        sperator: true
        selected: false
        source: "qrc:/Images/News_Icon.svg"
        text: "News"
    }

    SideBarButton {
        id: sbbDapps

        anchors.top: parent.top
        anchors.topMargin: getActualY(540.5)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(64.5)

        selected: false
        source: "qrc:/Images/Dapps_Icon.svg"
        text: "Dapps"
    }

    SideBarButton {
        id: sbbSettings

        anchors.top: parent.top
        anchors.topMargin: getActualY(917)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(64.5)

        sperator: true
        selected: false
        source: "qrc:/Images/Settings_Icon.svg"
        text: "Settings"
    }

    Switch {
        id: swtch

        anchors.top: parent.top
        anchors.topMargin: getActualY(996.5)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(83.5)

        swtchWidth: getActualX(45.29)
        swtchHeight: getActualY(23.41)
        radius: getActualD(37)
        borderWidth: getActualD(1.5)

        on: !Styles.darkMode

        onToggled: {
            Styles.darkMode = !Styles.darkMode
        }
    }

    Text {
        id: txt

        anchors.top: parent.top
        anchors.topMargin: getActualY(999)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(126)

        width: getActualX(106)
        height: getActualY(19)

        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter

        font.family: Styles.fontMrR.name
        font.pixelSize: getActualD(15)
        color: Styles.textColor1

        text: "Light UI"
    }
}
