// array literal
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
print(shoppingList)

// dict literal
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "public Relations"
print(occupations)

// empty array, dict
let emptyArray = [String]()
let emptyDict = [String: Float]()
print(emptyArray)
print(emptyDict)

// implicit type array, dict
shoppingList = []
occupations = [:]
print(shoppingList)
print(occupations)
