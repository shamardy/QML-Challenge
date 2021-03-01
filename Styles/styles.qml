pragma Singleton
import QtQuick 2.12

QtObject {

    readonly property FontLoader fontMrBl: FontLoader { source: "../fonts/Montserrat-Black.ttf" }
    readonly property FontLoader fontMrBlI: FontLoader { source: "../fonts/Montserrat-BlackItalic.ttf" }
    readonly property FontLoader fontMrB: FontLoader { source: "../fonts/Montserrat-Bold.ttf" }
    readonly property FontLoader fontMrBI: FontLoader { source: "../fonts/Montserrat-BoldItalic.ttf" }
    readonly property FontLoader fontMrEB: FontLoader { source: "../fonts/Montserrat-ExtraBold.ttf" }
    readonly property FontLoader fontMrEBL: FontLoader { source: "../fonts/Montserrat-ExtraBoldItalic.ttf" }
    readonly property FontLoader fontMrEL: FontLoader { source: "../fonts/Montserrat-ExtraLight.ttf" }
    readonly property FontLoader fontMrELI: FontLoader { source: "../fonts/Montserrat-ExtraLightItalic.ttf" }
    readonly property FontLoader fontMrI: FontLoader { source: "../fonts/Montserrat-Italic.ttf" }
    readonly property FontLoader fontMrL: FontLoader { source: "../fonts/Montserrat-Light.ttf" }
    readonly property FontLoader fontMrLI: FontLoader { source: "../fonts/Montserrat-LightItalic.ttf" }
    readonly property FontLoader fontMrM: FontLoader { source: "../fonts/Montserrat-Medium.ttf" }
    readonly property FontLoader fontMrMI: FontLoader { source: "../fonts/Montserrat-MediumItalic.ttf" }
    readonly property FontLoader fontMrR: FontLoader { source: "../fonts/Montserrat-Regular.ttf" }
    readonly property FontLoader fontMrSB: FontLoader { source: "../fonts/Montserrat-SemiBold.ttf" }
    readonly property FontLoader fontMrSBI: FontLoader { source: "../fonts/Montserrat-SemiBoldItalic.ttf" }
    readonly property FontLoader fontMrT: FontLoader { source: "../fonts/Montserrat-Thin.ttf" }
    readonly property FontLoader fontMrTI: FontLoader { source: "../fonts/Montserrat-ThinItalic.ttf" }

    property bool darkMode: true

    function applyOpacity(hex, opacity="00") {
        return "#" + opacity + hex.substr(hex.length - 6)
    }

    property string logoMain: darkMode ? "qrc:/Images/AtomicDEX_Logo.svg" : "qrc:/Images/AtomicDex_Logo_Light.svg"
    property string logoSide: "qrc:/Images/AtomicDEX_Logo_Side.svg"

    readonly property string lightMain: "#F2F3F7"
    readonly property string lightSecondary: "#FFFFFF"
    readonly property string light3: "#FBFCFF"
    readonly property string light4: "#BECDE2"
    readonly property string light5: "#000000"
    readonly property string transparentMain: "transparent"

    readonly property string darkMain: "#15182B"
    readonly property string darkSecondary: "#0A0B1B"
    readonly property string dark3: "#2A2F48"
    readonly property string darkDropShadow: "#050615"
    readonly property string textdark1: "#78808D"

    readonly property string connectedInner: "#41EAD4"
    readonly property string connectedOuter: applyOpacity(connectedInner, "3B")

    readonly property string textColor1: darkMode ? textdark1 : "#456078"
    readonly property string textColor2: darkMode ? lightSecondary : "#3C5368"
    readonly property string textColorPercentagePlus: darkMode ? connectedInner : "#00C3AA"
    readonly property string textColorPercentageMinus: darkMode ? "#E938A4" : "#E31A93"

    readonly property string selectedSideTab: "2cc5fd"
    readonly property string selectedSideTabGradient1: applyOpacity(selectedSideTab, "80")
    readonly property string selectedSideTabGradient2: applyOpacity(selectedSideTab, "03")
    readonly property string sidebarIcon: textColor1
    readonly property string sidebarIconSelected: darkMode ? "#2BBEF2" : lightSecondary


    readonly property string mainColor: darkMode ? "#171A2D" : lightMain
    readonly property string borderGradient1: darkMode ? dark3 : lightMain

    readonly property string sideBarGradient1: darkMode ? "#0D0F21" : lightMain
    readonly property string sideBarGradient2: darkMode ? "#22263B" : lightMain

    readonly property string backgroundMain: darkMode ? darkMain : lightMain
    readonly property string iconDropShadow1: darkMode ? darkSecondary : applyOpacity(light5, "29")
    readonly property string iconDropShadow2: darkMode ? darkDropShadow : applyOpacity(light5, "29")
    readonly property string iconDropShadow3: applyOpacity("#6975A4", "1F")


    readonly property string switchInnerShadow: darkMode ? darkSecondary : lightSecondary
    readonly property string switchDropShadow1: darkMode ? darkSecondary : light4
    readonly property string switchDropShadow2: darkMode ? applyOpacity(dark3, "78") : lightSecondary
    
    readonly property string rctWidgetDropShadow1: darkMode ? darkDropShadow : light4
    readonly property string rctWidgetDropShadow2: darkMode ? applyOpacity("#6975a4", "1f") : lightSecondary
    readonly property string rctWidgetBorderGradient2: darkMode ? "#0D1021" : lightMain

    readonly property string seperatorGradient1: darkMode ? transparentMain : applyOpacity("#466077", "19")
    readonly property string seperatorGradient2: darkMode ? transparentMain : light3
    readonly property string seperatorGradient3: darkMode ? applyOpacity(lightSecondary, "06") : light3
    readonly property string seperatorGradient4: darkMode ? transparentMain : applyOpacity("#DBDBDB", "2C")

    readonly property string profileBorderGradient1: darkMode ? "#494B4D" : lightSecondary
    readonly property string profileBorderGradient2: darkMode ? "#979797" : transparentMain
    readonly property string profileInnerColor: darkMode ? "#2B2E33" : lightSecondary

    readonly property string cardGradient1: "#BB6BD9"
    readonly property string cardGradient2: "#2F80ED"
    readonly property string cardGradient3: "#00F0FF"
    readonly property string cardDropShadow1: applyOpacity(light5, "26")
    readonly property string cardDropShadow2: applyOpacity(light5, "40")

    readonly property string sperator2Gradient1: applyOpacity(lightSecondary, "00")
    readonly property string sperator2Gradient2: applyOpacity(lightSecondary, "0F")

    readonly property string dropShadowPie2: darkMode ? dark3 : light4

    readonly property string gridlinesColor: darkMode ? "rgba(240, 240, 240, 0.04)" : "rgba(120, 128, 141, 1)"


}
