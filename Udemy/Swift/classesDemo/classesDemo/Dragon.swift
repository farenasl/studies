class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String){
        print(speech)
    }
    
    override func move() {
        print("Fly forwards ...")
    }
    
    override func attack() {
        print("Spits fire, does 10 damage")
        super.attack()
    }
}
