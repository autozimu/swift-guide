// The access control levels of a type also affects the default access level
// of that type's members (its properties, methods, initializers, and
// subscripts). If you define a type's access level as private, the default
// access level of its memembers will also be private. If you define a type's
// access level as internal or public (or use the default access level of
// internal without specifying an access level explicitly), the default access
// level of the type's members will be internal.

public class SomePublicClass { // explicitly public class
    public var somePublicProperty = 0  // explicitly public class member
    var someInternalProperty = 0 // implicitly internal class member
    private func somePrivatMethod() {} // explicitly private class member
}

class SomeInternalClass { // implicitly internal class
    var someInternalProperty // implicitly internal class member
    private func somePrivatMethod() {} // explicitly private class member
}

private class SomePrivateClass { // explicitly private class
    var somePrivateProperty = 0 // implicitly private class member
    func somePrivateMethod() {} // implicitly private class member
}

// Tuple Types


// Function Types


// Enumeration Types


// Raw Values and Assocated Values

// Nested Types

// Subclassing
