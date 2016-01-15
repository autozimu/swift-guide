// Definition Syntax
class SomeClass {
}

struct SomeStructure {
}

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

// Class and Structure Instances
let someResolution = Resolution()
let someVideoMode = VideoMode()

// Accessing Properties
print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
print("The width of someResolution is now \(someVideoMode.resolution.width)")

// Memberwise Initialization for Structure Type
let vga = Resolution(width: 640, height: 480)
