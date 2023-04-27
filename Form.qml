import QtQuick 2.4
import QtQuick.Window 2.13
import QtQuick.Controls 1.6
import QtQuick.Controls.Styles.Desktop 1.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import QtTest 1.13
import QtQuick3D.Materials 1.0
import QtQuick3D.Helpers 1.0
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick 2.12

import QtQuick.LocalStorage 2.0
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls.Universal 2.0
import QtSensors 5.9
import Qt.labs.folderlistmodel 2.12
import Qt.labs.animation 1.0



ApplicationWindow {
    id: element
    width: 800
    minimumWidth: 800
    maximumWidth: 800
    height: 600
    property alias addStudentsWidget: addStudentsWidget
    minimumHeight: 600
    maximumHeight: 600
    visible: true
    title: "CubsApp"



    
    
    Rectangle {
        id: mainWidget
        color: "#ffffff"
        layer.mipmap: false
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        layer.smooth: true
        Rectangle {
            id: tollbarPanel
            height: 60
            color: "#525252"
            anchors.bottom: addStudentsWidget.top
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.left: parent.left
            
            Text {
                id: programNameLabel
                x: 125
                color: "#ffffff"
                text: qsTr("SMART CUBE")
                font.italic: false
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                anchors.top: parent.top
                anchors.topMargin: 18
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 18
                style: Text.Normal
                font.capitalization: Font.MixedCase
                font.weight: Font.ExtraBold
                renderType: Text.NativeRendering
                wrapMode: Text.NoWrap
                font.pixelSize: 24
                font.family: "Open Sans"
                horizontalAlignment: Text.AlignHCenter
            }
            
            Image {
                id: image
                height: 52
                anchors.right: programNameLabel.left
                anchors.rightMargin: 49
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 4
                anchors.top: parent.top
                anchors.topMargin: 4
                anchors.left: parent.left
                anchors.leftMargin: 16
                clip: false
                source: "images/logo.png"
                fillMode: Image.Stretch
            }
        }
        
        Rectangle {
            id: navigatePanel
            y: 0
            width: 100
            height: 540
            color: "#525252"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: tollbarPanel.bottom
            anchors.topMargin: 0

            MouseArea {
                id: toAddStudentsButton
                height: 90
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0

                Rectangle {
                    id: addStudentRectangle
                    color: "#7b85dc"
                    anchors.bottomMargin: -7
                    anchors.fill: parent
                    border.width: 1
                    border.color: "#c9c9c9"
                }

                Image {
                    id: image1
                    anchors.bottomMargin: 8
                    anchors.leftMargin: 19
                    anchors.rightMargin: 19
                    anchors.topMargin: 25
                    anchors.fill: parent
                    fillMode: Image.Stretch
                    source: "images/AddUser.png"
                }
            }

            MouseArea {
                id: toAddAchievementsButton
                height: 90
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 89

                Rectangle {
                    id: achivmetsRectangle
                    color: "#525252"
                    anchors.bottomMargin: -10
                    anchors.fill: parent
                    border.width: 1
                    border.color: "#c9c9c9"
                }

                Image {
                    id: image2
                    x: 8
                    y: 8
                    width: 84
                    height: 85
                    fillMode: Image.PreserveAspectFit
                    source: "images/addAchiv.png"
                }
            }

            MouseArea {
                id: toLeaderboardButton
                x: 1
                y: 179
                width: 100
                height: 82
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 186

                Rectangle {
                    id: leaderboarRectangle
                    color: "#525252"
                    anchors.fill: parent
                    border.color: "#c9c9c9"
                    border.width: 1
                }

                Image {
                    id: image3
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "images/Top.png"
                }
            }

            MouseArea {
                id: toEventDesignerButton
                x: 0
                y: 267
                height: 92
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 267
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top

                Rectangle {
                    id: eventDesignerRectangle
                    color: "#525252"
                    anchors.fill: parent
                    border.color: "#c9c9c9"
                    border.width: 1
                }

                Image {
                    id: image4
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "images/EventDesiner.png"
                }
            }

            MouseArea {
                id: toVisitsButton
                x: 0
                y: 354
                height: 90
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 360
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top

                Rectangle {
                    id: visitsReactangle
                    color: "#525252"
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.fill: parent
                    anchors.top: achivmetsRectangle.bottom
                    border.color: "#c9c9c9"
                    border.width: 1
                }

                Image {
                    id: image5
                    anchors.fill: parent
                    source: "images/Visits.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            MouseArea {
                id: toEventListButton
                x: 0
                y: 450
                height: 90
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 450
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top

                Rectangle {
                    id: eventListRectangle
                    color: "#525252"
                    anchors.fill: parent
                    anchors.top: eventDesignerRectangle.bottom
                    border.color: "#c9c9c9"
                    border.width: 1
                }

                Image {
                    id: image6
                    anchors.fill: parent
                    source: "images/EvensList.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }


        Rectangle {
            id: achivmentsWidget
            x: 93
            y: 57
            color: "#ffffff"
            visible: true
            anchors.bottom: parent.bottom
            anchors.leftMargin: 100
            anchors.right: parent.right
            border.width: 1
            anchors.left: parent.left
            anchors.rightMargin: 0
            anchors.topMargin: 60
            anchors.bottomMargin: 0
            anchors.top: parent.top

            Grid {
                id: gridAchievement
                width: 680
                anchors.bottom: parent.bottom
                columns: 6
                anchors.leftMargin: 8
                rows: 2
                spacing: 5
                anchors.right: parent.right
                flow: Grid.LeftToRight
                anchors.left: parent.left
                GroupBox {
                    id: groupBox13
                    x: 10
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle20
                        color: "#d9d9d9"
                        Text {
                            id: element20
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox14
                    x: 120
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle21
                        color: "#d9d9d9"
                        Text {
                            id: element21
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox15
                    x: 230
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle22
                        color: "#d9d9d9"
                        Text {
                            id: element22
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox16
                    x: 340
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle23
                        color: "#d9d9d9"
                        Text {
                            id: element23
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox17
                    x: 450
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle24
                        color: "#d9d9d9"
                        Text {
                            id: element24
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox18
                    x: 560
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle25
                        color: "#d9d9d9"
                        Text {
                            id: element25
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox19
                    x: 10
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle26
                        color: "#d9d9d9"
                        Text {
                            id: element26
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox20
                    x: 120
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle27
                        color: "#d9d9d9"
                        Text {
                            id: element27
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox21
                    x: 230
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle28
                        color: "#d9d9d9"
                        Text {
                            id: element28
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox22
                    x: 340
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle29
                        color: "#d9d9d9"
                        Text {
                            id: element29
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox23
                    x: 450
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle30
                        color: "#d9d9d9"
                        Text {
                            id: element30
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox24
                    x: 560
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle31
                        color: "#d9d9d9"
                        Text {
                            id: element31
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle4
                    width: 680
                    color: "#00000000"
                    border.color: "#d9d9d9"
                    border.width: 2
                    anchors.fill: parent
                }
                anchors.rightMargin: 7
                anchors.topMargin: 282
                anchors.bottomMargin: 8
                anchors.top: parent.top
            }

            Text {
                id: achievementLabel
                x: 173
                y: 20
                text: qsTr("Название достижения")
                font.weight: Font.ExtraBold
                font.family: "Open Sans"
                font.pixelSize: 14
            }

            BorderImage {
                id: achievementImage
                x: -8
                y: 20
                source: "../../Downloads/438-4388139_select-user-icon-businessman-png-icon-blue.png"
                anchors.bottom: parent.bottom
                border.top: 0
                border.bottom: 0
                anchors.leftMargin: 31
                anchors.right: parent.right
                border.left: 0
                anchors.left: parent.left
                Rectangle {
                    id: rectangle7
                    color: "#00000000"
                    radius: 8
                    border.width: 2
                    anchors.fill: parent
                }
                anchors.topMargin: 8
                anchors.rightMargin: 542
                border.right: 0
                anchors.bottomMargin: 410
                anchors.top: parent.top
            }

            TextField {
                id: nameAchievement
                x: 173
                y: 46
                width: 197
                height: 20
                placeholderText: qsTr("Название")
            }

            ComboBox {
                id: comboBoxTypeAchievement
                x: 387
                y: 46
            }

            Text {
                id: typeLabel
                x: 387
                y: 20
                text: qsTr("Тип")
                font.pixelSize: 14
                font.family: "Open Sans"
                font.weight: Font.ExtraBold
            }

            ComboBox {
                id: comboBoxPoint
                x: 522
                y: 46
                width: 170
                height: 22
                activeFocusOnPress: false
            }

            Text {
                id: pointsLabel
                x: 522
                y: 20
                width: 155
                height: 20
                text: qsTr("Очков для достижения")
                font.pixelSize: 14
                font.family: "Open Sans"
                font.weight: Font.ExtraBold
            }

            CheckBox {
                id: checkForAll
                x: 387
                y: 96
                text: qsTr("Награда для всех")
            }

            ComboBox {
                id: comboBoxForAllPoint
                x: 522
                y: 96
                width: 170
                height: 22
                activeFocusOnPress: false
                enabled: false
            }

            Rectangle {
                id: addButtonActivment
                x: 21
                y: 146
                width: 148
                height: 18
                color: "#d9d9d9"
                radius: 4
                MouseArea {
                    id: mouseArea9
                    Text {
                        id: element34
                        x: 6
                        y: 0
                        width: 136
                        height: 18
                        text: qsTr("Добавить достижение")
                        font.family: "Open Sans"
                        font.pixelSize: 12
                    }
                    anchors.fill: parent
                }
            }

            TextField {
                id: serchEdit
                x: 8
                y: 256
                placeholderText: qsTr("Поиск")
            }

            Rectangle {
                id: searchButton
                x: 145
                y: 258
                width: 48
                height: 18
                color: "#d9d9d9"
                radius: 4
                MouseArea {
                    id: mouseArea10
                    Text {
                        id: element35
                        text: qsTr("Поиск")
                        anchors.fill: parent
                        font.pixelSize: 12
                        font.family: "Open Sans"
                    }
                    anchors.fill: parent
                }
            }
        }

        Rectangle {
            id: addStudentsWidget
            x: 100
            y: 60
            color: "#ffffff"
            visible: true
            border.width: 1
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: navigatePanel.right
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 60

            TextField {
                id: passwordEdit
                x: 262
                y: 75
                width: 220
                height: 20
                font.pixelSize: 12
                layer.enabled: false
                visible: true
                echoMode: 2
                inputMask: qsTr("")
                placeholderText: qsTr("qwerty")
                font.family: "Open Sans"








            }

            Rectangle {
                id: addButton
                x: 199
                y: 113
                width: 132
                height: 18
                color: "#d9d9d9"
                radius: 4

                MouseArea {
                    id: mouseArea6
                    anchors.fill: parent

                    Text {
                        id: element4
                        x: 15
                        y: 2
                        width: 103
                        height: 14
                        text: qsTr("Добавить ученика")
                        font.pixelSize: 12
                    }
                }
            }

            Rectangle {
                id: deleteButton
                x: 371
                y: 113
                width: 111
                height: 18
                color: "#d9d9d9"
                radius: 4

                MouseArea {
                    id: mouseArea8
                    anchors.fill: parent

                    Text {
                        id: element5
                        x: 33
                        y: 2
                        text: qsTr("Удалить")
                        font.pixelSize: 12
                    }
                }
            }

            BorderImage {
                id: borderImage
                y: 23
                width: 128
                height: 128
                anchors.left: parent.left
                anchors.leftMargin: 18
                border.top: 0
                border.right: 0
                border.bottom: 0
                border.left: 0
                source: "../../Downloads/438-4388139_select-user-icon-businessman-png-icon-blue.png"

                Rectangle {
                    id: rectangle6
                    color: "#00000000"
                    radius: 8
                    anchors.fill: parent
                    border.width: 2
                }
            }

            Grid {
                id: gridStudent
                width: 680
                spacing: 5
                columns: 6
                rows: 2
                flow: Grid.TopToBottom
                anchors.right: parent.right
                anchors.rightMargin: 7
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 8
                anchors.top: parent.top
                anchors.topMargin: 282

                GroupBox {
                    id: groupBox1
                    x: 10
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle8
                        color: "#d9d9d9"
                        Text {
                            id: element8
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox2
                    x: 120
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle9
                        color: "#d9d9d9"
                        Text {
                            id: element9
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox3
                    x: 230
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle10
                        color: "#d9d9d9"
                        Text {
                            id: element10
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox4
                    x: 340
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle11
                        color: "#d9d9d9"
                        Text {
                            id: element11
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox5
                    x: 450
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle12
                        color: "#d9d9d9"
                        Text {
                            id: element12
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox6
                    x: 560
                    y: 5
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle13
                        color: "#d9d9d9"
                        Text {
                            id: element13
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox7
                    x: 10
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle14
                        color: "#d9d9d9"
                        Text {
                            id: element14
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox8
                    x: 120
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle15
                        color: "#d9d9d9"
                        Text {
                            id: element15
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox9
                    x: 230
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle16
                        color: "#d9d9d9"
                        Text {
                            id: element16
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox10
                    x: 340
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle17
                        color: "#d9d9d9"
                        Text {
                            id: element17
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox11
                    x: 450
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle18
                        color: "#d9d9d9"
                        Text {
                            id: element18
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.rightMargin: 29
                            anchors.topMargin: 8
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                        anchors.fill: parent
                    }
                }

                GroupBox {
                    id: groupBox12
                    x: 560
                    y: 105
                    width: 110
                    height: 100
                    title: qsTr("Group Box")
                    Rectangle {
                        id: rectangle19
                        color: "#d9d9d9"
                        anchors.fill: parent
                        Text {
                            id: element19
                            text: qsTr("Henry")
                            font.pixelSize: 12
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 30
                            anchors.right: parent.right
                            anchors.left: parent.left
                            anchors.topMargin: 8
                            anchors.rightMargin: 29
                            anchors.bottomMargin: 50
                            anchors.top: parent.top
                        }
                    }
                }

                Rectangle {
                    id: rectangle3
                    color: "#00000000"
                    anchors.fill: parent
                    border.color: "#d9d9d9"
                    border.width: 2
                }
            }

            TextField {
                id: searchEdit
                x: 8
                y: 253
                placeholderText: qsTr("Поиск")
            }

            Rectangle {
                id: searchButton1
                x: 145
                y: 255
                width: 48
                height: 18
                color: "#d9d9d9"
                radius: 4
                MouseArea {
                    id: mouseArea11
                    Text {
                        id: element36
                        text: qsTr("Поиск")
                        font.pixelSize: 12
                        font.family: "Open Sans"
                        anchors.fill: parent
                    }
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: generateButton
                x: 495
                y: 78
                width: 132
                height: 18
                color: "#d9d9d9"
                radius: 4

                MouseArea {
                    id: mouseArea7
                    anchors.fill: parent

                    Text {
                        id: element6
                        x: 3
                        y: 2
                        text: qsTr("Сгенерировать пароль")
                        font.pixelSize: 12
                    }
                }
            }

            TextField {
                id: loginEdit
                x: 262
                y: 49
                width: 220
                height: 20
                font.pixelSize: 12
                placeholderText: qsTr("Test")
                font.family: "Open Sans"
            }

            TextField {
                id: fioEdit
                x: 262
                y: 23
                width: 220
                height: 20
                font.pixelSize: 12
                clip: false
                opacity: 1
                placeholderText: qsTr("Иванов Иван Иванович")
                font.family: "Open Sans"
            }

            Text {
                id: passwordLabel
                x: 199
                y: 75
                text: qsTr("Пароль")
                font.weight: Font.ExtraBold
                font.family: "Open Sans"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 14
            }

            Text {
                id: fioLabel
                x: 199
                y: 23
                text: qsTr("ФИО")
                font.weight: Font.ExtraBold
                font.family: "Open Sans"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 14
            }

            Text {
                id: loginLabel
                x: 199
                y: 49
                text: qsTr("Логин")
                font.weight: Font.ExtraBold
                font.family: "Open Sans"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 14
            }
        }

        Rectangle {
            id: leaderBoardWidget
            x: 90
            y: 63
            color: "#ffffff"
            visible: true
            anchors.topMargin: 60
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            border.width: 1
            anchors.left: parent.left
            anchors.leftMargin: 100
            anchors.rightMargin: 0
            anchors.right: parent.right

            TableView {
                id: lederTable
                anchors.fill: parent

                TableView {
                    id: tableView
                    anchors.fill: parent
                }
            }
        }

        Rectangle {
            id: visitsWidget
            x: 99
            y: 67
            color: "#ffffff"
            anchors.top: parent.top
            anchors.right: parent.right
            border.width: 1
            anchors.bottomMargin: 0
            anchors.leftMargin: 100
            anchors.left: parent.left
            visible: true
            anchors.rightMargin: 0
            anchors.topMargin: 60
            anchors.bottom: parent.bottom

            MouseArea {
                id: mouseArea
                x: 53
                y: 44
                height: 100
                anchors.top: parent.top
                anchors.topMargin: 77
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 367
                anchors.right: parent.right
                anchors.rightMargin: 426
                anchors.left: parent.left
                anchors.leftMargin: 34

                Rectangle {
                    id: rectangle
                    color: "#d9d9d9"
                    radius: 25
                    anchors.fill: parent
                }

                Text {
                    id: element1
                    color: "#000000"
                    text: qsTr("Посещение занятий и интенсивов")
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 40
                    anchors.top: parent.top
                    anchors.topMargin: 41
                    font.weight: Font.ExtraBold
                    font.family: "Open Sans"
                    font.pixelSize: 12
                }
            }

            MouseArea {
                id: mouseArea1
                x: 47
                y: 51
                height: 100
                Rectangle {
                    id: rectangle1
                    color: "#d9d9d9"
                    radius: 25
                    anchors.fill: parent
                }

                Text {
                    id: element2
                    color: "#000000"
                    text: qsTr("Посещение интенсивов")
                    anchors.left: parent.left
                    anchors.leftMargin: 50
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 40
                    anchors.top: parent.top
                    anchors.topMargin: 41
                    font.pixelSize: 12
                    font.weight: Font.ExtraBold
                    font.family: "Open Sans"
                }
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.leftMargin: 412
                anchors.bottomMargin: 367
                anchors.left: parent.left
                anchors.rightMargin: 48
                anchors.topMargin: 77
                anchors.bottom: parent.bottom
            }

            MouseArea {
                id: mouseArea2
                x: 55
                y: 40
                height: 100
                Rectangle {
                    id: rectangle2
                    color: "#d9d9d9"
                    radius: 25
                    anchors.fill: parent
                }

                Text {
                    id: element3
                    color: "#000000"
                    text: qsTr("Посещение занятий и интенсивов")
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 12
                    anchors.top: parent.top
                    anchors.topMargin: 13
                    font.pixelSize: 12
                    font.weight: Font.ExtraBold
                    font.family: "Open Sans"
                }
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.leftMargin: 34
                anchors.bottomMargin: 315
                anchors.left: parent.left
                anchors.rightMargin: 426
                anchors.topMargin: 185
                anchors.bottom: parent.bottom
            }

            MouseArea {
                id: mouseArea3
                x: 47
                y: 45
                height: 100
                Rectangle {
                    id: rectangle5
                    color: "#d9d9d9"
                    radius: 25
                    anchors.fill: parent
                }

                Text {
                    id: element7
                    color: "#000000"
                    text: qsTr("Посещение занятий и интенсивов")
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 12
                    anchors.top: parent.top
                    anchors.topMargin: 13
                    font.pixelSize: 12
                    font.weight: Font.ExtraBold
                    font.family: "Open Sans"
                }
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottomMargin: 263
                anchors.leftMargin: 34
                anchors.left: parent.left
                anchors.rightMargin: 426
                anchors.topMargin: 237
                anchors.bottom: parent.bottom
            }

            MouseArea {
                id: mouseArea4
                x: 40
                y: 49
                height: 100
                Rectangle {
                    id: rectangle32
                    color: "#d9d9d9"
                    radius: 25
                    anchors.fill: parent
                }

                Text {
                    id: element32
                    color: "#000000"
                    text: qsTr("Посещение занятий и интенсивов")
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 12
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.top: parent.top
                    anchors.topMargin: 13
                    font.pixelSize: 12
                    font.weight: Font.ExtraBold
                    font.family: "Open Sans"
                }
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.leftMargin: 34
                anchors.bottomMargin: 211
                anchors.left: parent.left
                anchors.rightMargin: 426
                anchors.topMargin: 289
                anchors.bottom: parent.bottom
            }

            MouseArea {
                id: mouseArea5
                x: 49
                y: 34
                height: 100
                Rectangle {
                    id: rectangle33
                    color: "#d9d9d9"
                    radius: 25
                    anchors.fill: parent
                }

                Text {
                    id: element33
                    color: "#000000"
                    text: qsTr("Помощь клубу 1 го уровня")
                    anchors.top: parent.top
                    anchors.topMargin: 13
                    anchors.left: parent.left
                    anchors.leftMargin: 42
                    font.pixelSize: 12
                    font.weight: Font.ExtraBold
                    font.family: "Open Sans"
                }
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottomMargin: 315
                anchors.leftMargin: 412
                anchors.left: parent.left
                anchors.rightMargin: 48
                anchors.topMargin: 185
                anchors.bottom: parent.bottom
            }

            MouseArea {
                id: mouseArea12
                x: 41
                y: 39
                height: 100
                Rectangle {
                    id: rectangle34
                    color: "#d9d9d9"
                    radius: 25
                    anchors.fill: parent
                }

                Text {
                    id: element37
                    color: "#000000"
                    text: qsTr("Помощь клубу 2 го уровня")
                    anchors.top: parent.top
                    anchors.topMargin: 13
                    anchors.left: parent.left
                    anchors.leftMargin: 42
                    font.pixelSize: 12
                    font.weight: Font.ExtraBold
                    font.family: "Open Sans"
                }
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.leftMargin: 412
                anchors.bottomMargin: 263
                anchors.left: parent.left
                anchors.rightMargin: 48
                anchors.topMargin: 237
                anchors.bottom: parent.bottom
            }

            MouseArea {
                id: mouseArea13
                x: 34
                y: 43
                height: 100
                Rectangle {
                    id: rectangle35
                    color: "#d9d9d9"
                    radius: 25
                    anchors.fill: parent
                }

                Text {
                    id: element38
                    color: "#000000"
                    text: qsTr("Помощь клубу 3 го уровня")
                    anchors.left: parent.left
                    anchors.leftMargin: 42
                    anchors.top: parent.top
                    anchors.topMargin: 13
                    font.pixelSize: 12
                    font.weight: Font.ExtraBold
                    font.family: "Open Sans"
                }
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottomMargin: 211
                anchors.leftMargin: 412
                anchors.left: parent.left
                anchors.rightMargin: 48
                anchors.topMargin: 289
                anchors.bottom: parent.bottom
            }

            MouseArea {
                id: mouseArea14
                x: 55
                y: 36
                height: 100
                Rectangle {
                    id: rectangle36
                    color: "#d9d9d9"
                    radius: 25
                    anchors.fill: parent
                }

                Text {
                    id: element39
                    color: "#000000"
                    text: qsTr("Посещение занятий и интенсивов")
                    anchors.right: parent.right
                    anchors.rightMargin: 74
                    anchors.left: parent.left
                    anchors.leftMargin: 74
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 40
                    anchors.top: parent.top
                    anchors.topMargin: 41
                    font.pixelSize: 12
                    font.weight: Font.ExtraBold
                    font.family: "Open Sans"
                }
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.leftMargin: 176
                anchors.bottomMargin: 88
                anchors.left: parent.left
                anchors.rightMargin: 176
                anchors.topMargin: 356
                anchors.bottom: parent.bottom
            }
        }

        Rectangle {
            id: eventConstractWidget
            color: "#ffffff"
            anchors.leftMargin: 100
            anchors.topMargin: 60
            anchors.fill: parent

            Calendar {
                id: calendar
                x: 405
                y: 193
                width: 287
                height: 270
            }

            TextField {
                id: nameEventFiled
                x: 233
                y: 25
                width: 235
                height: 20
                text: ""
                inputMask: ""
                placeholderText: qsTr("Text Field")
            }

            Image {
                id: imageEvent
                x: 37
                y: 25
                width: 177
                height: 153
                source: "qrc:/qtquickplugin/images/template_image.png"
                fillMode: Image.PreserveAspectFit

                Rectangle {
                    id: rectangle37
                    width: 177
                    height: 153
                    color: "#d7d7d7"
                }
            }

            TextArea {
                id: textEventArea
                x: 28
                y: 193
                width: 357
                height: 270
            }

            Button {
                id: saveEventButton
                x: 233
                y: 51
                text: qsTr("Сохранить мероприятие")
            }

            Button {
                id: deleteImageButton
                x: 233
                y: 88
                text: qsTr("Удалить картинку")
            }

        }

        Rectangle {
            id: eventListWidget
            x: 100
            y: 60
            width: 700
            height: 540
            color: "#ffffff"

            GridLayout {
                id: eventListGirdLayout
                x: 8
                y: 8
                width: 684
                height: 524
            }
        }

    }
    
    Connections {
        target: toAddStudentsButton
        onClicked:{ addStudentRectangle.color = "#7b85dc"
            achivmetsRectangle.color = "#525252";
            visitsReactangle.color = "#525252";
            leaderboarRectangle.color = "#525252";
            eventDesignerRectangle.color ="#525252";
            eventListRectangle.color = "#525252";
            addStudentsWidget.visible = true;
            addStudentsWidget.enabled = true;
            achivmentsWidget.visible = false;
            achivmentsWidget.enabled = false;
           leaderBoardWidget.enabled = false;
            visitsWidget.visible = false;

           leaderBoardWidget.visible = false;
            visitsWidget.visible= false;
            eventConstractWidget.visible = false;
            eventConstractWidget.enabled = false;
            eventListWidget.visible = false;
            eventListWidget.enabled = false;



        }

    }

    Connections {
        target: toAddAchievementsButton
        onClicked:{ addStudentRectangle.color = "#525252"
            achivmetsRectangle.color = "#7b85dc";
            visitsReactangle.color = "#525252";
            leaderboarRectangle.color = "#525252";
            eventDesignerRectangle.color ="#525252";
            eventListRectangle.color = "#525252";
            addStudentsWidget.visible = false;
            addStudentsWidget.enabled = false;
            achivmentsWidget.visible = true;
            achivmentsWidget.enabled = true;
            leaderBoardWidget.enabled = false;
             visitsWidget.visible = false;

            leaderBoardWidget.visible = false;
             visitsWidget.enabled= false;
            eventConstractWidget.visible = false;
            eventConstractWidget.enabled = false;
            eventListWidget.visible = false;
            eventListWidget.enabled = false;



        }
    }
    Connections {
        target: toVisitsButton
        onClicked:{ addStudentRectangle.color = "#525252"
            achivmetsRectangle.color = "#525252";
            visitsReactangle.color = "#7b85dc";
            leaderboarRectangle.color = "#525252";
            eventDesignerRectangle.color ="#525252";
            eventListRectangle.color = "#525252";
            addStudentsWidget.visible = false;
            addStudentsWidget.enabled = false;
            achivmentsWidget.visible = false;
            achivmentsWidget.enabled = false;
           leaderBoardWidget.enabled = false;
            visitsWidget.visible = true;

           leaderBoardWidget.visible = false;
            visitsWidget.enabled = true;
            eventConstractWidget.visible = false;
            eventConstractWidget.enabled = false;
            eventListWidget.visible = false;
            eventListWidget.enabled = false;



        }

    }
    Connections {
        target: toEventDesignerButton
        onClicked:{addStudentRectangle.color = "#525252"
            achivmetsRectangle.color = "#525252";
            visitsReactangle.color = "#525252";
            leaderboarRectangle.color = "#525252";
            eventDesignerRectangle.color ="#7b85dc";
            eventListRectangle.color = "#525252";
            addStudentsWidget.visible = false;
            addStudentsWidget.enabled = false;
            achivmentsWidget.visible = false;
            achivmentsWidget.enabled = false;
            leaderBoardWidget.enabled = false;
             visitsWidget.visible = false;

            leaderBoardWidget.visible = false;
             visitsWidget.enabled= false;
            eventConstractWidget.visible = true;
            eventConstractWidget.enabled = true;
            eventListWidget.visible = false;
            eventListWidget.enabled = false;


        }
    }
    Connections {
        target: toEventListButton
        onClicked:{addStudentRectangle.color = "#525252"
            achivmetsRectangle.color = "#525252";
            visitsReactangle.color = "#525252";
            leaderboarRectangle.color = "#525252";
            eventDesignerRectangle.color ="#525252";
            eventListRectangle.color = "#7b85dc";
            addStudentsWidget.visible = false;
            addStudentsWidget.enabled = false;
            achivmentsWidget.visible = false;
            achivmentsWidget.enabled = false;
            leaderBoardWidget.enabled = false;
             visitsWidget.visible = false;

            leaderBoardWidget.visible = false;
           visitsWidget.enabled= false;
            eventConstractWidget.visible = false;
            eventConstractWidget.enabled = false;
            eventListWidget.visible = true;
            eventListWidget.enabled = true;


        }
    }

    Connections {
        target:  toLeaderboardButton
        onClicked:{addStudentRectangle.color = "#525252"
            achivmetsRectangle.color = "#525252";
            visitsReactangle.color = "#525252";
            leaderboarRectangle.color = "#7b85dc";
            eventDesignerRectangle.color ="#525252";
            eventListRectangle.color = "#525252";
            addStudentsWidget.visible = false;
            addStudentsWidget.enabled = false;
            achivmentsWidget.visible = false;
            achivmentsWidget.enabled = false;
            leaderBoardWidget.enabled = true;
             visitsWidget.visible = false;

            leaderBoardWidget.visible = true;
             visitsWidget.enabled= false;
            eventConstractWidget.visible = false;
            eventConstractWidget.enabled = false;
            eventListWidget.visible = false;
            eventListWidget.enabled = false;


        }
    }

    
    
    
    
    
}











/*##^##
Designer {
    D{i:24;invisible:true}D{i:80;invisible:true}D{i:142;invisible:true}D{i:141;invisible:true}
D{i:140;invisible:true}D{i:144;invisible:true}D{i:143;invisible:true}D{i:171;anchors_height:200;anchors_width:200;invisible:true}
D{i:179;invisible:true}
}
##^##*/
