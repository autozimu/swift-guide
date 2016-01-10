// While
let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08;
board[06] = +11;
board[09] = +09;
board[10] = +02;
board[14] = -10;
board[19] = -11;
board[22] = -02;
board[24] = -08;

var square = 0
var diceRoll = 0
while square < finalSquare {
    if ++diceRoll == 7 { diceRoll = 1 }
    square += diceRoll
    if square < board.count {
        square += board[square]
    }
}
print("Game over!")

// Repeat-While
square = 0
diceRoll = 0
repeat {
    square += board[square]
    if ++diceRoll == 7 { diceRoll = 1 }
    square += diceRoll
} while square < finalSquare
print("Game over!")
