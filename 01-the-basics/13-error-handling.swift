// error handling
func makeASandwich() throws {
    // ...
}

do {
    try makeASandwich()
    eatASandwich()
} catch Error.OutofCleanDishes {
    washDishes()
} catch Error.MissingIngredients (let ingredients) {
    buyGroceries(ingredients)
}
