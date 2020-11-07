import Foundation

var str = "Hello, playground"

let pizzaInInches: Int = 12
var numberOfSlices: Int = 10

print(numberOfSlices)

var numberOfSlicesComputed: Int {
    return pizzaInInches - 4
}

print(numberOfSlicesComputed)

var numberOfSlicesComputed2: Int {
    get {
        return pizzaInInches - 4
    }
}

print(numberOfSlicesComputed2)

let a = numberOfSlicesComputed * 2

func calcPizzaSlices() {
    numberOfSlices = pizzaInInches - 4
}

calcPizzaSlices()
print(numberOfSlices)

