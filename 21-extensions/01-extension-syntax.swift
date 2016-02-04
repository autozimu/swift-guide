extension SomeType {
    // new functionality to add to SomeType goes here
}

extension SomeType: SomeProtocol, AnotherProtocol {
    // implementation of protocol requirements goes here
}

// If you define an extension to add new functionality to an existing type,
// the new functionality will be available on all existing instances of that
// type, even if they were created before the extension was defined.
