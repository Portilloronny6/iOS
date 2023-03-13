
var arreglo = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func condicionOrdenamiento(_ s1: String, _ s2: String) -> Bool {
    return s1.count < s2.count
}

arreglo.sorted(by: condicionOrdenamiento)

print(arreglo.sorted(by: { $0.count < $1.count }))

// Capturing values

func makeIncrement(forIncrement amount: Int) -> () -> Int {
    
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
        
    }
    return incrementer
}

let incrementByTen = makeIncrement(forIncrement: 10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())

let alsoIncrementByTen = incrementByTen

print(alsoIncrementByTen())
print(alsoIncrementByTen())

// Another example

func aumentoEnDiez(funcion aumento: (Int, Int) -> Int, numero1 x: Int, numero2 y: Int) -> Int {
    return aumento(x, y)
}

let incremento: (Int, Int) -> Int = { (number1: Int, number2: Int) -> Int in
    return number1 + number2
}

print(aumentoEnDiez(funcion: incremento, numero1: 5, numero2: 20))


// Another way

func aumento(incremento numero: Int) -> () -> Int {
    
    func increment() -> Int {
        return numero + 10
    }
    
    return increment
}

print(aumento(incremento: 600)())
