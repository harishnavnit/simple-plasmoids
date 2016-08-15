import QtQuick 2.0
import QtQuick.Layouts 1.1

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.extras 2.0 as PlasmaExtras
import org.kde.plasma.components 2.0 as PlasmaComponents

Column {
    id: timetableView

    width: parent.width
    height: parent.height
    anchors.fill: parent

    readonly property var stopDateTime: getModelData(timetableSource.data, "DepartureDateTime", "00:00")
    readonly property var routeStops:   getModelData(timetableSource.data, "RouteStops", "")
    readonly property string startStop: getModelData(timetableSource.data, "StartStop", "Oslo Bussterminal")
    readonly property string targetStop:getModelData(timetableSource.data, "Target", "Unknown")

    function getModelData(data, key, defaultValue) {
        var source = model.name
        //FIXME: Is model.index the right value to be used ?
        //       How do you get the current index ?
        return data[source] ? (
            data[source]["departures"][model.index][key] ?
                data[source]["departures"][model.index][key] : defaultValue
        ) : defaultValue
    }

    PlasmaComponents.Label {
        text: targetStop
    }
}
