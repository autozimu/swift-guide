class Counter {
    var count = 0

    func increment() {
        count += 1
    }

    func incrementBy(amout: Int) {
        count += amout
    }

    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
print(counter.count)
counter.incrementBy(5)
print(counter.count)
counter.reset()
print(counter.count)

// Local and External Parameter Names for Methods

class Counter2 {
    var count: Int = 0
    func incrementBy(amout: Int, numberOfTimes: Int) {
        count += amout * numberOfTimes
    }
}

let counter2 = Counter2()
counter2.incrementBy(5, numberOfTimes: 3)
print(counter2.count)

// Modifying External Parameter Name Behavior for Methods

// The self Property

struct Point2 {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
}

let somePoint = Point2(x: 4.0, y: 5.0)
if somePoint.isToTheRightOfX(1.0) {
    print("This point is to the right of the line where x == 1.0")
}

// Modifying Value Types from Within Instance Methods
struct Point3 {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint3 = Point3(x: 1.0, y: 1.0)
somePoint3.moveByX(2.0, y: 3.0)
print("The point is now at (\(somePoint3.x), \(somePoint3.y))")

let fixedPoint = Point3(x: 3.0, y: 3.0)
// fixedPoint.moveByX(2.0, y: 3.0) // compile error

// Assigning to self Within a Mutating Method
struct Point4 {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        self = Point4(x: x + deltaX, y: y + deltaY)
    }
}

enum TriStateSwitch {
    case Off, Low, High
    mutating func next() {
        switch self {
            case Off:
                self = Low
            case Low:
                self = High
            case High:
                self = Off
        }
    }
}

var ovenLight = TriStateSwitch.Low
print(ovenLight)
ovenLight.next()
print(ovenLight)
ovenLight.next()
print(ovenLight)
