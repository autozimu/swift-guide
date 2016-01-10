// Array Type Shorthand Syntax
// array syntax full: Array<Element>
// shorthand [Element]
// shorthand is preferred

// Creating an Empty Array
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count)")

someInts.append(3)
someInts = [] // type could be inferred

// Creating an Array with a Default Value
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

// Creating an Array by Adding Two Arrays Together
var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)

var sixDoubles = threeDoubles + anotherThreeDoubles

// Creating an Array with an Array Literal

var shoppingList  = ["Eggs", "Milk"]

// Accessing and Modifying an Array
print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas", "Apples"]

shoppingList.insert("Maple Syrup", atIndex: 0)

let mapleSyrup = shoppingList.removeAtIndex(0)

firstItem = shoppingList[0]

let apples = shoppingList.removeLast()

// Iterating Over an Array
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerate() {
    print("Item \(index + 1): \(value)")
}
