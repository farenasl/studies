//import UIKit

//var str = "Hello, playground"

print("Holanda")

/*
 fdsdasf
 */

print("Holanda \(1+1) veces")

func saludar() {
    print ("hola")
}

for _ in 0...3 {
    saludar()
}

saludar()

import Darwin

print("prueba")
sleep(2)
print("prueba2")

func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye")
    }
    else if loveScore >= 40 {
        print("You go together like Coke and Mentos")
    }
    else {
        print("You'll be forever alone")
    }
}

for _ in 0...100 {
    loveCalculator()
}

func loveCalculator2() {
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
    case ...40:
        print("You'll be forever alone")
    case 41..<81:
        print("You go together like Coke and Mentos")
    case 81...100:
        print("You love each other like Kanye loves Kanye")
    default:
        print("")
    }
}

for _ in 0...100 {
    loveCalculator2()
}


func calculator(n1 :Int, n2: Int) -> Int {
    return n1 * n2
}

func add(n1 :Int, n2: Int) -> Int {
    return n1 + n2
}

calculator(n1: 2, n2: 3)

func func3(n1: Int, n2: Int, operation: (Int, Int)->Int) -> Int {
    return operation(n1, n2)
}

func3(n1: 2, n2: 3, operation: add);

func multiply(n1: Int, n2: Int) -> Int {
    return n1*n2
}
func3(n1: 2, n2: 3, operation: multiply);

//clousure
func3(n1: 2, n2: 3, operation: { (n1: Int, n2: Int) -> Int in
    return n1*n2
})

func3(n1: 2, n2: 3, operation: {(n1, n2) -> Int in
    return n1*n2
})

func3(n1: 2, n2: 3, operation: {(n1, n2) in
    return n1*n2
})

var result = func3(n1: 2, n2: 3, operation: {(no1, no2) in no1*no2 })
print(result)
//anonymous parameter names
result = func3(n1: 2, n2: 3, operation: {$0*$1})
print(result)

result = func3(n1: 2, n2: 3) {$0*$1}
print(result)

result = func3(n1: 2, n2: 3) {$0 * $1}
print(result)

//example
let array = [6,2,3,9,4,1]

func addOne(n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne)

//addOne function as a clousure
print(array.map({(n1: Int) -> Int in
        return n1 + 1
    }
))

print(array.map({(n1) -> Int in
        return n1 + 1
    }
))

print(array.map({(n1) in
        return n1 + 1
    }
))

print(array.map({(n1) in
        n1 + 1
    }
))

print(array.map({$0 + 1}))

print(array.map{$0 + 1})

let newArray = array.map{"\($0)"}
print(newArray)
