protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
    
//    func fly(){
//        print("The bird flaps its wings and lifts off into the sky")
//    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents")
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

class Penguin: Bird {
    func swin() {
        print("The penguin paddles through the water.")
    }
}

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swin()
//myPenguin.fly() // Penguins dont fly ... we need to modify this

struct FlyingMusseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

let musseum = FlyingMusseum()
musseum.flyingDemo(flyingObject: myEagle)
//musseum.flyingDemo(flyingObject: myPenguin)

struct Airplene: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

let myAirplane = Airplene()
musseum.flyingDemo(flyingObject: myAirplane)

