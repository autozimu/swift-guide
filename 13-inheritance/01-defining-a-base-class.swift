class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }

    func makeNoise() {
        // do nothing
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")
