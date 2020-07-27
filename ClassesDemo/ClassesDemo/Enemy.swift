
class Enemy {
    var health: Int
    var attackStrenght: Int
    
    init(health: Int, attackStrenght: Int) {
        self.health = health
        self.attackStrenght = attackStrenght
    }
    
    func takeDamage(amount: Int) {
        health -= amount
    }
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrenght) damage.")
    }
}
