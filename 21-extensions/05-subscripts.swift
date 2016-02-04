extension Int {
    subscript(digitIndex: Int) -> Int {
        var digits = digitIndex
        var decimalBase = 1
        while digits > 0 {
            decimalBase *= 10
            digits -= 1
        }
        return (self / decimalBase) % 10
    }
}

var num = 746381295
print(num[0])
print(num[1])
print(num[2])
print(num[8])

print(num[9])
print(0746381295[9])
