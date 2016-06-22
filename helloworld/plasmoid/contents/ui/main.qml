import QtQuick 2.0
import org.kde.plasma.helloworld 0.1 as HelloWorld
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents

Rectangle {
    id: page
    width: 320
    height: 480

        HelloWorld.Model {
            id: source
        }

        Text {
            id: contentLabel
            anchors.centerIn: parent
            text: source.getText
            //text: "Hello World"
        }
}
