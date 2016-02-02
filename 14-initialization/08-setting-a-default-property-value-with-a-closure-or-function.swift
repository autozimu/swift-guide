// class SomeClass {
//     let someProperty: SomeType = {
//         // create a default value for someProperty inside this closure,
//         // someValue must be of the same type as SomeType
//         return someValue
//     }
// }

struct CheckerBoard {
    let boardColors: [Bool] = {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...10 {
            for j in 1...10 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()

    func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
        return boardColors[(row * 10) + column]
    }
}

let board = CheckerBoard()
print(board.squareIsBlackAtRow(0, column: 1))
print(board.squareIsBlackAtRow(9, column: 9))
