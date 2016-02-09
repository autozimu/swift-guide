// - `public`
// - `internal`, module
// - `private`, source file

// Private access in Swift differs from private access in most other
// languages, as it's scoped to the enclosing source file rather thatn to the
// enclosing declaration. This means taht a type can access any private
// entities that are defined in the same source file as itself, but an
// extension cannot access that type's private member if it's defined in a
// separate source file.


// Guiding Principle of Access Levels
// No entity can be defined in terms of another entity that has a lower (more
// restrictive) access level.

// Default Access Levels
// - `internal`

// Access Levels for Single-Target Apps

// Access Levels for Frameworks
// - `public` as API

// Access Levels for Unit Test Targets
// A unit test target can access any internal entity, if ou mark the import
// declaration for a product module with the `@testable` attribute and compile
// that product module with testing enabled.
