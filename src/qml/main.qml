import QtQuick 2.11
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.4 as QQC2
import org.kde.kirigami 2.13 as Kirigami

Kirigami.ApplicationWindow {
    id: root
    Kirigami.SwipeNavigator {
        anchors.fill: parent
        Kirigami.Page{
            icon.name: "applications-all"
            title: "Applications"
        }
        Kirigami.Page{
            icon.name: "preferences-plugin"
            title: "Plugins"
            needsAttention: true
        }
        Kirigami.Page{
            icon.name: "view-list-symbolic"
            title: "Installed"
        }
        Kirigami.Page{
            icon.name: "update-none"
            title: "Updates"
            progress: 0.5
        }
        Kirigami.Page{
            icon.name: "settings-configure"
            title: "Settings"
        }
    }
}
