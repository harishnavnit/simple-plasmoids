import QtQuick 2.0
import QtQuick.Layouts 1.1

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.extras 2.0 as PlasmaExtras
import org.kde.plasma.components 2.0 as PlasmaComponents

Column {
    id: timetableListView

    width: parent.width
    height: parent.height
    anchors.fill: parent

    readonly property string startStop: getModelData(timetableSource.data, "StartStop", "Oslo Bussterminal")
    readonly property string targetStop: getModelData(timetableSource.data, "Target", "Unknown")
    readonly property var stopDateTime: getModelData(timetableSource.data, "DepartureDateTime", "00:00")
    readonly property var routeStops: getModelData(timetableSource.data, "RouteStops", "")

    function getModelData(data, key, defaultValue) {
        var source = model.name
        console.log(JSON.stringify(data))
        return data[source] ? ( data[source][key] ? data[source][key] : defaultValue ) : defaultValue
    }

    PlasmaComponents.Label {
        text: targetStop
    }
}
