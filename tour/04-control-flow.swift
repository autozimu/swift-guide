let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

// conditional must be Boolean expression
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

// use `if` and `let` together to work with optional values
func greeting(optionalName: String?) -> String {
    if let name = optionalName {
        return "Hello, \(name)"
    } else {
        return "Yo!"
    }
}
var name: String? = "John Appleseed"
print(greeting(name))
name = nil
print(greeting(name))

// nil coalase
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)

// switch
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("that would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}
// execution does not continue to the next case.

// for-in
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print(largest, largestKind)

// while
var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

// for
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)
// `..<` range that omits its upper value
// `...` range that inclues its both values

var secondForLoop = 0
for var i = 0; i < 4; i += 1 {
    secondForLoop += i
}
print(secondForLoop)
