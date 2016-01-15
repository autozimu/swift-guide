struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048

print("cinema is now \(cinema.width) pixels wide")
print("hd is still \(hd.width) pixels wide")

enum CompassPoint {
    case North, South, East, West
}

var currentDirection = CompassPoint.West
let rememberDirection = currentDirection
currentDirection = .East
if rememberDirection == .West {
    print("The remembered direction is still .West")
}
