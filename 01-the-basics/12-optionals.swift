// optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?
// automatically set to nil

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

// force unwrapping
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!)")
}

// optional binding
if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' could not be converted to an integer")
}

if let firstNumber = Int("4"), secondNumber = Int("42") where firstNumber <
secondNumber {
    print("\(firstNumber) < \(secondNumber)")
}
