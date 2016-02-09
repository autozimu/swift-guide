struct IntStack {
    var items = [Int]()

    mutating func push(item: Int) {
        items.append(item)
    }

    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct Stack<Element> {
    var items = [Element]()

    mutating func push(item: Element) {
        items.append(item)
    }

    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stackOfString = Stack<String>()
stackOfString.push("uno")
stackOfString.push("dos")
stackOfString.push("tres")
stackOfString.push("cuatro")

let fromTheTop = stackOfString.pop()
print(fromTheTop)
