// The Sort Method
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversed = names.sort(backwards)
print(reversed)

// Closure Expression Syntax
reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversed)

reversed = names.sort({ (s1: String, s2: String) -> Bool in return s1 > s2 })
print(reversed)

// Inferring Type from Context
reversed = names.sort({ s1, s2 in return s1 > s2 })
print(reversed)

// Implicit Returns from Single-Expression Closures
reversed = names.sort({ s1, s2 in s1 > s2 })
print(reversed)

// Shorthand Argument Names
reversed = names.sort({ $0 > $1 })
print(reversed)

// Operator Functions
reversed = names.sort(>)
print(reversed)
