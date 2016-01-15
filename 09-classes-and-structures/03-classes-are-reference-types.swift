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

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEight = tenEighty
alsoTenEight.frameRate = 30.0

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

// Identity Operators
// identical to ===
// not identical to !==
if tenEighty === alsoTenEight {
    print("tenEighty and alsoTenEight refer to the same VideoMode instance")
}
