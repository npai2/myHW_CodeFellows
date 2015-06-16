//: Playground - noun: a place where people can play

import UIKit


var str = "Hello, playground"
class Pokemon{
    var level = 1
    var health = 100
    var type = "None"
    var alive = true
    
    func levelUP(){
        self.level++
    }
    
    init(startingLevel: Int){
        self.level = startingLevel
    }
    
    func isDead(){
        if self.health <= 0 {
            alive = false
        }
    }
    
    
}

class Squirtle : Pokemon{
    var name : String?
    
    func bubble(enemy: Pokemon) {
        if self.level < 5 {
            enemy.health = enemy.health - 20
        } else {
            enemy.health = enemy.health - 30
        }
        enemy.isDead()
    }
    
}

class Wartortle : Squirtle{
    func waterfall(enemy: Pokemon) {
        let damage = 100
        enemy.health = enemy.health - damage
        enemy.isDead()
    }
}

class Blastoise : Wartortle{
    func hydroPump(enemy: Pokemon){
        let damage = 200
        enemy.health = enemy.health - damage
        enemy.isDead()
    }
}

class Eevee : Pokemon{
    var name : String?
    override var type: String{
        get {
            return "Normal"
        }
        set
        {
            
        }
 
    }
    func growl(enemy: Pokemon)
    {
        enemy.health = enemy.health - 5
        enemy.isDead()
    }
    
    func scratch(enemy: Pokemon)
    {
        enemy.health = enemy.health - 10
        enemy.isDead()
    }
}

class Jolteon : Eevee{
    override var type: String{
        get {
            return "Electric"
        }
        set
        {
            
        }
        
    }
    
    func thunderbolt(enemy: Pokemon)
    {
        enemy.health = enemy.health - 25
        enemy.isDead()
    }
    
}

class Vaporeon : Eevee{
    override var type: String{
        get {
            return "Water"
        }
        set
        {
            
        }
        
    }
    
    func watergun(enemy: Pokemon)
    {
        enemy.health = enemy.health - 20
        enemy.isDead()
    }
    
}

class Flareon : Eevee{
    override var type: String{
        get {
            return "Fire"
        }
        set
        {
            
        }
        
    }
    
    func flamethrower(enemy: Pokemon)
    {
        enemy.health = enemy.health - 40
        enemy.isDead()
    }
    
}

class Poliwag : Pokemon{
    override var type: String{
        get {
            return "Water"
        }
        set
        {
            
        }
        
    }
    
    func watergun(enemy: Pokemon)
    {
        enemy.health = enemy.health - 5
        enemy.isDead()
    }
    
}

class Poliwhirl : Poliwag{

    
    func muddywater(enemy: Pokemon)
    {
        enemy.health = enemy.health - 25
        enemy.isDead()
    }
    
}

class Poliwrath : Poliwhirl{
    
    
    func hydropump(enemy: Pokemon)
    {
        enemy.health = enemy.health - 50
        enemy.isDead()
    }
    
}

class Politoed : Poliwhirl{
    
    
    func bodyslam(enemy: Pokemon)
    {
        enemy.health = enemy.health - 50
        self.health = self.health - 10
        enemy.isDead()
        self.isDead()
    }
    
}


let jolty: Jolteon = Jolteon(startingLevel: 21)
var types: String = jolty.type
println(types)
var num = 8
println(num)


















