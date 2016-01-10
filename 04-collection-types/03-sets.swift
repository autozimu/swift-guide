// Hash Values fro Set Types
// Hashable, Equatable protocols

// Set Type Syntax
// Set<Element>

// Creating and Initializing an Empty Set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
letters = []

// Creating a Set with an Array Literal
var favoriteGenes: Set = ["Rock", "Classical", "Hiphop"]

// Accessing and Modifying a Set
print("I have \(favoriteGenes.count) favorite music genres.")

if favoriteGenes.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

favoriteGenes.insert("Jazz")

if let removedGene = favoriteGenes.remove("Rock") {
    print("\(removedGene)? I'm over it.")
} else {
    print("I never much cared for that.")
}

if favoriteGenes.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

for genre in favoriteGenes {
    print("\(genre)")
}

for genre in favoriteGenes.sort() {
    print("\(genre)")
}
