import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

ListView {
    id: intrinsicView
    anchors.fill: parent
    boundsBehavior: Flickable.StopAtBounds
    model: intrinsicProxyModel
    clip: true

    delegate: ItemDelegate {
        width: intrinsicView.width - 25
        rightPadding: 6
        bottomPadding: 6
        leftPadding: 6
        topPadding: 6
        contentItem: RowLayout {
            spacing: 0
            Rectangle {
                color: catColours[intrinsicTechnology]
                width: 15
                height: 20
                radius: 25
            }
            Label {
                text: intrinsicFullName
                leftPadding: 5
                topPadding: 0
                bottomPadding: 0
                Layout.preferredWidth: intrinsicView.width - 25 - 10 - 6
                Layout.minimumWidth: Layout.preferredWidth
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
    ScrollBar.vertical: ScrollBar {
        policy: ScrollBar.AlwaysOn
    }
}
