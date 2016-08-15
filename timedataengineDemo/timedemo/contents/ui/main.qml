import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents

Item {
    PlasmaCore.DataSource {
        id: timeDataSource
        engine: "time"
        connectedSources: ["Local", "UTC"]
        //interval: 500

        onSourceAdded: {
            console.log("Source = " + source)
            console.log(JSON.stringify(data))
            for (var key in data.keys()) {
                console.log("key = " + key + "\tValue = " + data[source][key])
            }
        }

        onNewData: {
            //console.log(JSON.stringify(data))
            if (sourceName == "Local") {
                local.text = data.DateTime
            } else if (sourceName == "UTC") {
                label_utc.text = data.Timezone
            }
        }
    }

    Grid {
        columns: 2
        spacing: 15

        Text {
            text: timeDataSource.data.Local.Timezone
        }
        Text {
            id: local
            text: "XX:XX:XX"
        }
        Text {
            id: label_utc
            text: "XXXX"
        }
        Text {
            id: utc
            text: timeDataSource.data.UTC.DateTime
        }
    }
}
