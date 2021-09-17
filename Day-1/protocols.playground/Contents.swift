import UIKit


// protocols - way of describing types of methods

//protocol, kind of like the pattern we want to impose on things
protocol Identifiable{
    var id: String{get set}
    
}

//user inherits the pattern for id
struct User: Identifiable{
    var id: String
}


func displayID(thing: Identifiable){
    print("my id is \(thing.id)")
}


//protocol inheritance
protocol Payable{
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol hasVacation{
    func takeVacation(days: Int)
}


protocol Employee: Payable, NeedsTraining, hasVacation{
    
}


// Extensions - allow you to add methods to exisitng types
//add methods to ints

extension Int{
    func squared() -> Int{
        return self * self
    }
}

let number = 8
number.squared()



//protocol extensions
let pythons = ["eric", "graham", "john", "michael", "terry", "terry"]
let beatles = Set(["john", "paul","george", "ringo"])

extension Collection{
    func summarize(){
        print("there are \(count) of us:")
        
        for name in self{
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()




//protocol oriented programming
// attaching higher/lower level objects with methods based around their protocols
protocol Identifiable2{
    var id: String{get set}
    func identify()
}

extension Identifiable{
    func identify(){
        print("my id is \(id)")
    }
}

struct User2: Identifiable{
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify()


// summary
//1. Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
//2. You can build protocols on top of other protocols, similar to classes.
//3. Extensions let you add methods and computed properties to specific types such as Int.
//4. Protocol extensions let you add methods and computed properties to protocols.
//5. Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
