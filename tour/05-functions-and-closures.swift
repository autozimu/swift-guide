// use `->` to separate parameers and return type
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}
print(greet("Bob", day: "Tuesday"))

// return multiple values as tuple
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }

        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

// variable length arguments
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
print(sumOf())
print(sumOf(42, 597, 12))

func avg(numbers: Int...) -> Int {
    var sum = 0
    var cnt = 0
    for number in numbers {
        sum += number
        cnt += 1
    }

    return sum / cnt
}
print(avg(42, 697, 12))


// closures
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }

    return addOne
}
var increment = makeIncrementer()
print(increment(7))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(numbers, condition: lessThanTen))

// use `in` to separation function declaration and body
print(
      numbers.map({
          (number: Int) -> Int in
          let result = 3 * number
          return result
      })
      )

// function declaration can be infered
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

// refer parameters by number instead of by name
// also, trailing closures can omit parentheses
let sortedNumbers = numbers.sort { $0 > $1 }
print(sortedNumbers)
