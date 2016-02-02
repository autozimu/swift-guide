// `required` modifier to indicate that every subclass of the class must
// implement that initializer

class SomeClass {
    required init() {
        // initailizer implementation goes here
    }
}

class SomeSubclass: SomeClass {
    required init() {
    }
}
