// What's different: error handing in Swift does not involve unwinding the
// call stack, a process that can be computationlly expensive.

// Propagating Erros using Throwing Functions

func canThrowErrors() throws -> String {
    return ""
}
func cannotThrowErrors() -> String {
    return ""
}

// Only throwing functions can propagate errors. Any errors inside a
// non-throwing function must be handled inside the function.

struct Item {
    var price: Int
    var count: Int
}

enum VendingMachineError: ErrorType {
    case InvalidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case OutOfStock
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]

    var coinsDeposited = 0

    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }

    func vend(itemNamed name: String) throws {
        guard var item = inventory[name] else {
            throw VendingMachineError.InvalidSelection
        }

        guard item.count > 0 else {
            throw VendingMachineError.OutOfStock
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.InsufficientFunds(coinsNeeded:
                item.price - coinsDeposited)
        }

        coinsDeposited -= item.price
        item.count -= 1
        inventory[name] = item
        dispenseSnack(name)
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

// Handling Errors Using Do-Catch
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
    try buyFavoriteSnack("Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.InvalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.OutOfStock {
    print("Out of Stock.")
} catch VendingMachineError.InsufficientFunds(let coinsNeeded) {
    print("Insufficient funds. Please insert additional \(coinsNeeded) coins.")
}

// Converting Errors to Optional Values

func someThrowingFunction() throws -> Int {
    // ...
    return 1
}

let x = try? someThrowingFunction()

let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}

func fetchData() -> Data? {
    if let data = try? fetchDataFromDisk() { return data }
    if let data = try? fetchDataFromServer() { return data }
    return nil
}

// Disabling Error Propagation
let photo = try! loadImage("./Resources/John Appleseed.jpg")
