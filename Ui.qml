import QtQuick 2.4
import QtQuick.Controls 1.6
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles.Desktop 1.0
import QtQuick.Dialogs.qml 1.0
import Qt.labs.calendar 1.0
import QtQuick.Window 2.13
import QtQuick3D 1.0
import QtQuick3D.Materials 1.0
import QtWebEngine.Controls1Delegates 1.0

UiForm {
    id: uiForm
    width: 800
    height: 600
    layer.textureMirroring: ShaderEffectSource.MirrorVertically
    clip: false
    opacity: 0.8
    layer.effect: row

    Row {
        id: row
        width: 800
        height: 600
    }
}

/*##^##
Designer {
    D{i:0;3d-view:false}
}
##^##*/
