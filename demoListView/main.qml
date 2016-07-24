import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 320
    height: 240
    title: qsTr("QML ListView demo")

    ListModel {
        id: stopsModel

        ListElement {
            stop: "Randa"
            eta: "2:45"
        }
        ListElement {
            stop: "Geneva"
            eta: "3:25"
        }
        ListElement {
            stop: "Bern"
            eta: "1.95"
        }
        ListElement {
            stop: "Zurich"
            eta: "4:21"
        }
        ListElement {
            stop: "Interlaken"
            eta: "3:13"
        }
        ListElement {
            stop: "Olten"
            eta: "1:14"
        }
    }

    ListView {
        id: stopsView
        anchors.fill: parent
        model: stopsModel
        delegate: stopsDelegate
    }

    Component {
        id: stopsDelegate
        Column {
            Rectangle {
                width: (root.width)/3
                height: (root.height)/stopsModel.count
                color: "grey"
                Row {
                    spacing: root.width - (stopItem.width + etaItem.width)
                    Rectangle {
                        id: stopItem
                        color: "blue"
                        width : (root.width)/3
                        height: parent.height
                        Text { text: stop }
                    }
                    Rectangle {
                        id: etaItem
                        color: "red"
                        width : (root.width)/3
                        height: (root.height)/stopsModel.count
                        Text { text: eta }
                    }
                }
            }
            Rectangle {
                id: stopSeparator
                color: "yellow"
                width: root.width
                height: 2
            }
        }
    }
}
