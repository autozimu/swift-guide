struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

// Stored Properties of Constant Structure Instances

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

// rangeOfFourItems.firstValue = 6 // compile error

// Lasy Stored Properties
class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")

print(manager.importer.fileName)

// Stored Properties and Instance Variables
