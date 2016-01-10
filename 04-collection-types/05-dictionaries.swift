// Dictionary Type Shorthand Syntax
// full: Dictionary<Key, Value>
// short: [Key: Value]
// shorthand form is preferred

// Creating an Empty Dictionary
var nameOfIntegers = [Int: String]()

nameOfIntegers[16] = "sixteen"
nameOfIntegers = [:]

// Creating a Dictionary with a Dictionary Literal
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}

airports["LHR"] = "London"

airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

airports["APL"] = "Apple International"
airports["APL"] = nil

if let removedValue = airports.removeValueForKey("DUB") {
    print("The removed airport's name is \(removedValue)")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}

// Iterating Over a Dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
for airportName in airports.values {
    print("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)
