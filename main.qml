import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.1
import "Components"
import "Styles"

ApplicationWindow {
    id: appWindow
    visibility: "Maximized"
    visible: true
    width: (objGlobal.orientation === "L") ? 1920 : 1080
    height: (objGlobal.orientation === "L") ? 1080 : 1920
    title: qsTr("AtomicDex")

    QtObject {
        id: objGlobal

        property string orientation: "L"
    }

    color: Styles.mainColor

    Sidebar {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }

    TopBar {
        anchors.top: parent.top
        anchors.topMargin: getActualY(40)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(320)
    }

    Wallets {
        anchors.top: parent.top
        anchors.topMargin: getActualY(150)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(320)
    }

    Assets {
        anchors.top: parent.top
        anchors.topMargin: getActualY(150)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(1120)
    }

    ChartWidget {
        anchors.top: parent.top
        anchors.topMargin: getActualY(542)
        anchors.left: parent.left
        anchors.leftMargin: getActualX(320)
    }



    function getActualX(parValue, parScaleToMax) {
        var pvRef = appWindow.width;
        if (parScaleToMax) { pvRef = Screen.width; }

        var pvOrientDim = (objGlobal.orientation === "L") ? 1920 : 1080;
        var value =  parValue * pvRef / pvOrientDim;

        value = Math.round(value);
        if(value <= 1)
        {
            return 1;
        }
        else
        {
            return value;
        }
    }

    function getActualY(parValue, parScaleToMax) {
        var pvRef = appWindow.height;
        if (parScaleToMax) { pvRef = Screen.height; }

        var pvOrientDim = (objGlobal.orientation == "L") ? 1080 : 1920;
        var value =  parValue * pvRef / pvOrientDim;

        value = Math.round(value);
        if(value <= 1)
        {
            return 1;
        }
        else
        {
            return value;
        }
    }

    function getActualD(parValue, parScaleToMax) {

        var value = (getActualX(parValue, parScaleToMax) + getActualY(parValue, parScaleToMax)) / 2
        value = Math.round(value);
        if(value <= 1)
        {
            return 1;
        }
        else
        {
            return value;
        }
    }
}
