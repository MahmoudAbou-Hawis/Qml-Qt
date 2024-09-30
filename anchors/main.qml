import QtQuick

Window {
    width: 500
    height: 500
    visible: true
    title: qsTr("Hello World")
    id : root
    Rectangle
    {
        color:"red"
        height:200
        width: 200
        id:rootrec
        Rectangle
        {
            height:50
            color: "yellow"
            anchors
            {
                left:rootrec.left
                right:rootrec.right
                leftMargin:rootrec.width /16
                verticalCenter: rootrec.verticalCenter
            }
        }
    }
}
