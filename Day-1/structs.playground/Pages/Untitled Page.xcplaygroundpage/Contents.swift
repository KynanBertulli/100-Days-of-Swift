import UIKit

//creating our own data type using struct, with one property
struct Sport{
    var name: String
}

var tennis = Sport(name: "tennis")
print(tennis.name)
//reassigning the property
tennis.name = "lawn tennis"
print(tennis.name)


//computed properties - properties of a struct that are computed based on other properties
struct Sport2{
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String{
        if isOlympicSport{
            return "\(name) is an olympic sport"
        }
        else{
            return "\(name) is not an olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "chessboxing", isOlympicSport: false )
print(chessBoxing.olympicStatus)



//property observers - let you run code before any other code changes
//willset - before a property changes
//didset - used after a property changes
struct Progress{
    var task: String
    var amount: Int{
        didSet{
            print("\(task) is now \(amount)% complete ")
        }
    }
}

var progress = Progress(task: "loading data", amount: 0)

//didSet will run after each time the property changes
progress.amount = 30
progress.amount = 80
progress.amount = 100



//methods
//functions within structs to use properties within struct
struct City{
    var population: Int
    
    func collectTaxes() -> Int{
        return population * 1000
    }
}

let london = City(population: 9_000)
print(london.collectTaxes())



//method mutation

struct Person {
    var name: String
    
    mutating func makeAnonymous(){
        name = "anonymous"
    }
}

var person = Person(name: "alex")

print(person.name)
//will only allow mutating func to be run on var variables
person.makeAnonymous()
print(person.name)



//methods of strings

let string = "do or do not there is no try"

print(string.count)
print(string.contains("DO"))
print(string.hasPrefix("do"))
print(string.uppercased())
print(string.sorted())



//methods of arrays

var toys = ["woody"]

print(toys.count)
toys.append("buzz")

toys.firstIndex(of: "buzz")

toys.sorted()
toys.remove(at: 0)
