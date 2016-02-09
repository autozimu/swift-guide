// Bitwise NOT Operator
// `~`
let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits // 0b11110000


// Bitwise AND Operator
// `&`
let firstSixBits: UInt8 = 0b11111100
let lastSixBits: UInt8 = 0b00111111
let middleFourBits = firstSixBits & lastSixBits // 0b00111100

// Bitwise OR Operator
// `|`
let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110
let combinedBits = someBits | moreBits // 0b11111110

// Bitwise XOR Operator
// `^`
let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits = firstBits ^ otherBits // 00010001

// Bitwise Left and Right Shift Operator
// `<<`
// `>>`

// Shifting Behavior for Unsigned Integers
let shiftBits: UInt8 = 4  // 0b00000100
shiftBits << 1 // 0b00001000
shiftBits << 2 // 0b00010000
shiftBits << 5 // 0b10000000
shiftBits << 6 // 0b00000000
shiftBits >> 2 // 0b00000001

let pink: UInt32 = 0xCC6699
let redComponent = (pink & 0xFF0000) >> 16 // redComponent is 0xCC, or 204
let greenComponent = (pink & 0x00FF00) >> 8 // greenComponent is 0x66, or 102
let blueComponent = pink & 0x0000FF

// Shifting Behavior for Signed Integers
