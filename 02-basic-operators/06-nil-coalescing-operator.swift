// a ?? b
// return a if it contains a value, or return a default value b if a is nil

a != nil ? a! : b

let defaultColorName = "red"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
