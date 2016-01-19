// read-write
// subscript(index: Int) -> Int {
//     get {
//         // return appropriate subscript value
//     }
//     set {
//     }
// }

// read-only
// subscript(index: Int) -> Int {
//     // return appropriate subscript value
// }

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")
