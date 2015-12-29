// interger conversion
// let cannotBeNageative: UInt8 = -1 // compile error
// let tooBig: Int8 = Int8.max + 1 // compile error
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// inter and floating-point conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine
let integerPi = Int(pi2)
