import Foundation

var str = "Hello, playground"

let pizzaInInches: Int = 16
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

var numberOfSlicesComputed3: Int {
    get {
        return pizzaInInches - 4
    }
    set {
        print("numberOfSlices now has a new value which is \(newValue)")
    }
}

numberOfSlicesComputed3 = 12

let b = numberOfSlicesComputed3 + 2

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfPizza: Int {
    get {
        let numberOfPeopleFeedPerPizza = numberOfSlicesComputed2 / slicesPerPerson
        return numberOfPeople / numberOfPeopleFeedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices/slicesPerPerson
    }
}

numberOfPizza = 6

print(numberOfPizza)

// Observed properties

var pizzaInInches2: Int = 10 {
    willSet {
        print(pizzaInInches2)
        print(newValue)
    }
    didSet {
        print(oldValue)
        print(pizzaInInches2)
        if pizzaInInches2 >= 18 {
            print("Inavlid size specified, pizzaInInches2 set to 18.")
            pizzaInInches2 = 18
        }
    }
}

pizzaInInches2 = 33
print(pizzaInInches2)

//Paint challenge
var width: Float = 3.4, height: Float = 2.1

var bucketsOfPaint: Int {
    get {
        Int(ceilf(width*height/1.5))
    }
    set {
        print("\(newValue) buckets of paint can cover \(Float(newValue) * 1.5) sqmts.")
    }
}

bucketsOfPaint = 8

print(bucketsOfPaint)
