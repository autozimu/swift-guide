// closed range operator: a...b

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// half-open range operator: a..<b

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
