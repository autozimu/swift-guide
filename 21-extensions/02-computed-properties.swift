extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters.")
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters.")

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long.")

// Extensions can add new computed properties, but they cannot add stored
// properties, or add property observers to existing properties.
