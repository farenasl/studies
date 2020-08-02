
print("Hello, World!")

let skeleton = Enemy(health: 100, attackStrength: 10)
print(skeleton.health)
skeleton.move()
skeleton.attack()

let skeleton2 = Enemy(health: 100, attackStrength: 10)
let skeleton3 = Enemy(health: 100, attackStrength: 10)

let dragon = Dragon(health: 100, attackStrength: 10)
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "My teeth are swords!, My claws are spears! My wings are a hurricane")
dragon.attack()
dragon.move()

let skeleton1 = skeleton3
skeleton1.takeDamage(amount: 10)
skeleton1.takeDamage(amount: 10)
skeleton3.takeDamage(amount: 10)
print(skeleton1.health)
print(skeleton3.health)

var skeleton4 = EnemyStruct(health: 100, attackStrength: 10)
var skeleton5 = skeleton4

skeleton4.takeDamage(amount: 10)
skeleton4.takeDamage(amount: 10)
skeleton5.takeDamage(amount: 10)
print(skeleton4.health)
print(skeleton5.health)
