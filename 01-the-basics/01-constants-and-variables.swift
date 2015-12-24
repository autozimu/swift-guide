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

// this is a comment

/* this is also a comment,
but written over multiple lines */

/* this is the start of the first multiple comment
/* this is the second, nested multiple comment */
this is the end of hte first multiple comment */

// semicolons are optional
// but required if multiple statements are in one line
let cat = "🐱"; print(cat)

let minValue = UInt8.min
let maxValue = UInt8.max

// Int == Int64 on 64-bit platform, == Int32 on 32-bit platform

// unless necessary, always use Int over Int32/Int64

// unless necessary, always use Int over UInt

// Double 64-bit
// Float 32-bit

// Double is preferred

// type inference
let meaningOfLife = 42
// inferred to be of type Int
let pi = 3.14159
// inferred to be of type Double
let anotherPi = 3 + 0.14159
// inferred to be of type Double

// numeric literals
let decimalInteger = 17
let binaryInteger = 0b1001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// extra formatting to be easier to read
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// interger conversion
// let cannotBeNageative: UInt8 = -1 // compile error
// let tooBig: Int8 = Int8.max + 1 // compile error
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// inter and floating-point conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi)

// type aliases

typealias AudioSample = UInt16

var maxAmplituteFound = AudioSample.min

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!"
} else {
    print("Eww, turnips are horrible.")
}

let i = 1
// if i { // compile error
// }

if i == 1 {
}

// tuples
