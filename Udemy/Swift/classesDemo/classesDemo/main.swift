
print("Hello, World!")

let skeleton = Enemy()
print(skeleton.health)
skeleton.move()
skeleton.attack()

let skeleton2 = Enemy()
let skeleton3 = Enemy()

let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "My teeth are swords!, My claws are spears! My wings are a hurricane")
dragon.attack()
dragon.move()
