var potentialOverflow = Int16.max
// potentialOverflow += 1 // runtime error


// overflow addition: `&+`
// overflow subtraction: `&-`
// overflow multiplication: `&*`

// value overflow
var unsignedOverflow = UInt8.max // 255
unsignedOverflow = unsignedOverflow &+ 1 // 0
print(unsignedOverflow)

unsignedOverflow = UInt8.min // 0
unsignedOverflow = unsignedOverflow &- 1 // 255
print(unsignedOverflow)

var signedOverflow = Int8.min // -128
signedOverflow = signedOverflow &- 1 // 127
print(signedOverflow)
