// Fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print(oddDigits.union(evenDigits).sort())
print(oddDigits.intersect(evenDigits).sort())
print(oddDigits.subtract(singleDigitPrimeNumbers).sort())
print(oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort())

// Set Memembership and Equality
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

print(houseAnimals.isSubsetOf(farmAnimals))
print(farmAnimals.isSupersetOf(houseAnimals))
print(farmAnimals.isDisjointWith(cityAnimals))
