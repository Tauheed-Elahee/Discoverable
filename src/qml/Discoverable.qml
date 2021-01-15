import QtQuick 2.11
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.4 as QQC2
import org.kde.kirigami 2.11 as Kirigami

Kirigami.ApplicationWindow {
    id: root
    
    header: Kirigami.ActionToolBar {
        id: toolBar
        
        //anchors.fill: parent
        anchors.horizontalCenter: root.horizonalCenter
        //horizonalAlignment: AlignHCenter
        
        actions: [
            Kirigami.Action {
                iconName: "applications-all"
                text: "Applications"
                onTriggered: console.log(toolBar.horizonalAlignment);
                
            },
            Kirigami.Action {
                iconName: "preferences-plugin"
                text: "Plugins"
            },
            Kirigami.Action {
                iconName: "view-list-symbolic"
                text: "Installed"
            },
            Kirigami.Action {
                iconName: "update-none"
                text: "Updates"
            },
            Kirigami.Action {
                iconName: "settings-configure"
                text: "Settings"
            }
        ]
    }
    
    Component {
    id: applicationsPage
Kirigami.Page{
    title: "test"
    
    actions {
        main: Kirigami.Action {
            iconName: "search"
            text: "search"
        }
    }
    
    }
    }
    
    pageStack.initialPage: applicationsPage
    
}
