func min(_ a: Int, _ b: Int) -> Int {
    return a < b ? a : b
}

print(min(234234234, 5))

func lastDigit(_ number: Int) -> Int {
    return number % 10
}

print(lastDigit(50242352834751))

func firstNumbers(_ number: Int) -> [Int] {
    var numbers = [Int]()
    
    for i in 1...number {
        numbers.append(i)
    }
    return numbers
}

print(firstNumbers(3))


