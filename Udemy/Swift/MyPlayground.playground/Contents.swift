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
