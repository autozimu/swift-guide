// `let` to introduce const
// `var` to introduce variable
let maximumNumberOfLoginAttempts = 10
var currentLoginAttemp = 0

// declare multiple variable at once
var x = 0.0, y = 0.0, z = 0.0

// explicitly specify var type when declaring
var welcomeMessage: String
welcomeMessage = "Hello"

// explicitly specify var type when declaring multiple vars
var red, green, blue: Double

// unicode characters can be used as variable names
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

// var can be assigned to a different value
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

// while const can only be assigned once
let languageName = "Swift"
// languageName = "Swift++" // compile-time error

// print current value
print(friendlyWelcome)

// string interpolation
print("The current value of friendlyWelcome is \(friendlyWelcome)")
