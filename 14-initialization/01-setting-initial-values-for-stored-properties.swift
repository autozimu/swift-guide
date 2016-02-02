// Initializers
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}

var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")

// Default Property Values
struct Fahrenheit2 {
    var temperature = 32.0
}
