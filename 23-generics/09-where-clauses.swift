protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct Stack<Element>: Container {
    // original Stack<Element> implementation
    var items = [Element]()

    mutating func push(item: Element) {
        items.append(item)
    }

    mutating func pop() -> Element {
        return items.removeLast()
    }

    // conformance to the Container protocol
    mutating func append(item: Element) {
        self.push(item)
    }

    var count: Int {
        return items.count
    }

    subscript(i: Int) -> Element {
        return items[i]
    }
}

extension Array: Container {}

func allItemsMatch<C1: Container, C2: Container where C1.ItemType == C2.ItemType, C1.ItemType: Equatable> (someContainer: C1, _ anotherContainer: C2) -> Bool {
    // check that both container contain the same number of items
    if someContainer.count != anotherContainer.count {
        return false
    }

    // check each pair of items to see if they are equivalent
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }

    // all items match, so return true
    return true
}


var stackOfString = Stack<String>()
stackOfString.push("uno")
stackOfString.push("dos")
stackOfString.push("tres")

var arrayOfString = ["uno", "dos", "tres"]

if allItemsMatch(stackOfString, arrayOfString) {
    print("All items match.")
} else {
    print("Not all items match.")
}

