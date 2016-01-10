func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backwards ? stepBackward : stepForward
}

var currentValue = -4
let moveNearToZero = chooseStepFunction(currentValue > 0)
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearToZero(currentValue)
}
