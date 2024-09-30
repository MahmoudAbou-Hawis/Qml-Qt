Window {
    width: 500
    height: 500
    visible: true
    title: qsTr("Hello World")
    id : root
    Image {
    id: image
    source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
    width: 500; height: 550
    Component.onCompleted: console.log(width)
        Rectangle
        {
            height: 50
            width: 1000 * image.progress
            color: "blue"
            x :0
            y : 500
            visible: image.progress !== 1
        }
    }
}