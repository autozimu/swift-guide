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
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

func createAddress() -> Address {
    print("Function was called.")

    let someAddress = Address()
    someAddress.buildingNumber = "29"
    someAddress.street = "Acacia Road"

    return someAddress
}

john.residence?.address = createAddress()

