struct TrackedString {
    private(set) var numberOfEdits = 0

    var value: String = "" {
        didSet {
            numberOfEdits++
        }
    }
}

var stringToEdit = TrackedString()
stringToEdit.value = "This string will be tracked."
stringToEdit.value += " This edit will increment numberOfEdits."
stringToEdit.value += " so will this one."

print("The number of edits is \(stringToEdit.numberOfEdits)")


// Initializers

// Default Initializers

// Defalut Memberwise Initializers for Structure Types
