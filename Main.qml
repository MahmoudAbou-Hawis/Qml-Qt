import QtQuick

Window {
    width: 500
    height: 500
    visible: true
    title: qsTr("Hello World")
    id : root

    Image {
        id: rootImage
        source: "file:////home/sofar/Downloads/background.png"
        property int _minSide: Math.min(root.width,root.height)
        width: _minSide - 30
        height: _minSide - 30
        x: 10 + (root.width - _minSide)/2
        y: 10 + (root.height - _minSide)/2
        Image {
            id: large_arm
            source: "file:////home/sofar/Downloads/largeArm.png"
            height: 230
            width: 100
            x: rootImage.width/2 - width/2
            y: rootImage.height/2 - 156
            transform: Rotation
            {
                origin.x: large_arm.width/2
                origin.y: 156
                RotationAnimation on angle
                {
                    from:0
                    to:360 * 24
                    duration: 60000
                    loops: Animation.Infinite
                }

            }
        }
        Image {
            id: small_arm
            source: "file:////home/sofar/Downloads/smallArm.png"
            height: 140
            width: 100
            x: rootImage.width/2 - width/2
            y: rootImage.height/2 - 90
            transform: Rotation{
                origin.x: small_arm.width/2
                origin.y: 90

                RotationAnimation on angle
                {
                    from: 0
                    to:360
                    duration: 60000
                    loops: Animation.Infinite
                }
            }
        }

    }
}
