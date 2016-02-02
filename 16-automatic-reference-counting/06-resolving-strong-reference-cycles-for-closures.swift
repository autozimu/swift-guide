// Defining a Capture List

// lazy var someClosure: (Int, String) -> String = {
//     [unowned self, weak delegate = self.delegate!] (index: Int, stringToProcess: String) -> String in
//     // closure body goes here
// }

// Weak and Unowned References
class HTMLElement {

    let name: String
    let text: String?

    lazy var asHTML: Void -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }

    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }

    deinit {
        print("\(name) is being deinitialized")
    }
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
print(paragraph!.asHTML())

paragraph = nil
