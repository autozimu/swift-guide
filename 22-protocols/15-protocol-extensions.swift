protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0

    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom / m
    }
}

extension RandomNumberGenerator {
    func randomBool() -> Bool {
        return random() > 0.5
    }
}

let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
print("Here's a random Boolean: \(generator.randomBool())")

protocol TextRepresentable {
    var textualDescription: String { get }
}
protocol PrettyTextRepresentable: TextRepresentable {
    var prettyTextualDescription: String { get }
}
// Providing Default Implementations
extension PrettyTextRepresentable {
    var prettyTextualDescription: String {
        return textualDescription
    }
}

// Adding Constraints to Protocol Extensions
extension CollectionType where Generator.Element: TextRepresentable {
    var textualDescription: String {
        let itemsAsText = self.map { $0.textualDescription }
        return "[" + itemsAsText.joinWithSeparator(", ") + "]"
    }
}

struct Hamster {
    var name: String
    var textualDescription: String {
        return "A hamster named \(name)"
    }
}

extension Hamster: TextRepresentable {}

let murrayTheHamster = Hamster(name: "Murray")
let morganTheHamster = Hamster(name: "Morgan")
let mauriceTheHamster = Hamster(name: "Maurice")
let hamster = [murrayTheHamster, morganTheHamster, mauriceTheHamster]

print(hamster.textualDescription)

// If a conforming type satisfies the requirements for multiple contrained
// extensions that provide implementations for the same method or property,
// Swift will use the implementation corresponding to the most specialized
// constraints.
