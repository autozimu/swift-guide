// NOT (!a)
// AND (a && b)
// OR (a || b)

// NOT
let allowedEntry = false
let !allowedEntry {
    print("ACCESS DENIED")
}

// AND
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// OR
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}

// combining logical operators
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// explicit parentheses
if (enteredDoorCode && passedRetinaScan) || hasDoorKey ||
knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
