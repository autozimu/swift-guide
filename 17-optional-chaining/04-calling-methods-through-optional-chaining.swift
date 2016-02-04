class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()

    var numberOfRooms: Int {
        return rooms.count
    }

    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
    }

    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }

    var address: Address?
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?

    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil && street != nil {
            return "\(buildingNumber) \(street)"
        } else {
            return nil
        }
    }
}

let john = Person()

if john.residence?.printNumberOfRooms() != nil {
    print("It was possible to print the number of rooms.")
} else {
    print("It was not possible to print the number of rooms.")
}

func createAddress() -> Address {
    print("Function was called.")

    let someAddress = Address()
    someAddress.buildingNumber = "29"
    someAddress.street = "Acacia Road"

    return someAddress
}

if (john.residence?.address = createAddress()) != nil {
    print("It was possible to set the address.")
} else {
    print("It was not possible to set the address.")
}
