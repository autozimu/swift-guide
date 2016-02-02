struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe")

if let giraffe = someCreature {
    print("An animal was initialized with a species of \(giraffe.species)")
}

let anonymousCreatrure = Animal(species: "")

if anonymousCreatrure == nil {
    print("The anonymous creatrure could not be initialized")
}

// Failable Initializers for Enumerations
enum TempatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
            case "K":
                self = .Kelvin
            case "C":
                self = .Celsius
            case "F":
                self = .Fahrenheit
            default:
                return nil
        }
    }
}

let fahrenheitUnit = TempatureUnit(symbol: "F")
if fahrenheitUnit != nil {
    print("This is a definedj temperature unit, so initialzation succeeded.")
}

let unknownUnit = TempatureUnit(symbol: "X")
if unknownUnit == nil {
    print("This is not a defined temperature unit, so initialzation failed.")
}

// // Failable Initializers for Enumerations with Raw Values
// enum TempatureUnit2: Character {
//     case Kelvin = "K", Celsius = "C", Fahrenheit: "F"
// }

// let fahrenheitUnit2 = TempatureUnit2(rawValue: "F")
// if fahrenheitUnit2 != nil {
//     print("This is a defined temperature unit, so initialzation succeeded.")
// }

// let unknownUnit2 = TempatureUnit2(rawValue: "X")
// if unknownUnit2 == nil {
//     print("This is not a defined temperature, so initialzation failed.")
// }

// Failable Initializers for Classes
class Product {
    let name: String!
    init?(name: String) {
        self.name = name
        if name.isEmpty { return nil }
    }
}

if let bowTie = Product(name: "bow tie") {
    print("The product's name is \(bowTie.name)")
}

// Progration of Initialization Failure
class CartItem: Product {
    let quantity: Int!

    init?(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
        if quantity < 1 { return nil }
    }
}

if let twoSocks = CartItem(name: "sock", quantity: 2) {
    print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
}

if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
    print("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")
} else {
    print("Unable to initialize zero shirts.")
}

if let oneUnnamed = CartItem(name: "", quantity: 1) {
    print("Item: \(oneUnnamed.name), quantity: \(oneUnnamed.quantity)")
} else {
    print("Unable to initialize one unnamed product.")
}

// Overriding a Failable Initializer
class Document {
    var name: String?

    init() {}

    init?(name: String) {
        self.name = name
        if name.isEmpty { return nil }
    }
}

class AutomaticallyNamedDocumented: Document {
    override init() {
        super.init()
        self.name = "[Untitiled]"
    }

    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitiled]"
        } else {
            self.name = name
        }
    }
}

class UntitiledDocument: Document {
    override init() {
        super.init(name: "[Untitiled]")!
    }
}

// The init! Failable Initializer
