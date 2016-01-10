let greeting = "Guten Tag!"

print(greeting[greeting.startIndex])
print(greeting[greeting.startIndex.successor()])

let index = greeting.startIndex.advancedBy(7)
print(index)
print(greeting[index])

// greeting[greeting.endIndex] // runtime error
// greeting[greeting.endIndex.successor()] // runtime error

for index in greeting.characters.indices {
    print("\(greeting[index])", terminator: "")
}
print("")

var welcome = "hello"
welcome.insert("!", atIndex: welcome.endIndex)
print(welcome)

welcome.insertContentsOf(" there".characters, at:
    welcome.endIndex.predecessor())
print(welcome)

welcome.removeAtIndex(welcome.endIndex.predecessor())
print(welcome)

let range = welcome.endIndex.advancedBy(-6)..<welcome.endIndex;
welcome.removeRange(range)
print(welcome)
