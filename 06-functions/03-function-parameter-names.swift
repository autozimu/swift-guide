func someFunction(firstParameter: Int, secondParameter: Int) {
}
someFunction(1, secondParameter: 2)

// Specifying External Parameter Names
func someFunction(externalParameterName localParameter: Int) {
}

func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)!"
}
print(sayHello(to: "Bill", and: "Ted"))
// if provide an external parameter name for a parameter, that external name
// must always be used when call the function.

// Omitting External Parameter Names
func someFunction(firstParameter: Int, _ secondParameter: Int) {
}
someFunction(1, 2)
// first parameter omits its external parameter name by default

// Default Parameter Values
func someFunction(parameterWithDefault: Int = 12) {
}
someFunction(6)
someFunction()

// Variadic Parameters
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print(arithmeticMean(1, 2, 3, 4, 5))
print(arithmeticMean(3, 8.25, 18.75))

// Constant and Variable Parameters
// parameters are constants by default
func alignRight(var string: String, totalLength: Int, pad: Character) -> String {
    let amountToPad = totalLength - string.characters.count
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}
let originalString = "hello"
let paddedString = alignRight(originalString, totalLength: 10, pad: "-")
print(paddedString)

// In-Out Parameters
func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
