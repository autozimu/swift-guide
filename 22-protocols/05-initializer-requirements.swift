protocol SomeProtocol {
    init(someParameter: Int)
}

// Class Implementations of Protocol Initializer Requirements

class SomeClass: SomeProtocol {
    required ini(someParameter: Int) {
        // initializer implementation goes here
    }
}

// `required` modifier ensures taht you provide an explicit or inherited
// implementation of the initializer requirement on all subclasses of the
// confirming class, such that they also conform to the protocol.


protocol SomeProtocol2 {
    init()
}

class SomeSuperClass {
    init() {
        // initializer implementation goes here
    }
}

class SomeSubClass: SomeSuperClass, SomeProtocol2 {
    // "required" from SomeProtocol2 conformance; "override" from
    // SomeSuperClass
    required override init() {
        // initializer implementation goes here
    }
}


// Failable Initializer Requirements
