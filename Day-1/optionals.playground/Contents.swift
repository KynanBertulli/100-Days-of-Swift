import UIKit

// optionals - swifts solution to null references

//might have a number, but can also have no numbers

var age: Int? = nil
age = 38



// unwrapped optionals
// lets us do operations on optionals only if they have data
var name : String? = nil

if let unwrapped = name{
    print("\(unwrapped.count) letters")
}
else{
    print("missing a name")
}



//unwrapping with guards
// unwraps an optional but if has nil expects to escape

func greet(_ name: String?){
    guard let unwrapped = name else{
        print("you didn't provide a name")
        return
    }
    print("hello, \(unwrapped)")
}


//force unwrapping
//convert it from an optional type to a non-optional type
//only do when you are sure it is safe
//make sure you are not force wrapping a nil value

let str = "5"
let num = Int(str)!




//implicit unwrapped optionals
//mght have value or nil
// used when we know a value WILL have a value but not at creation
// will crash if used when nil
// does not require guard let
let age2: Int! = nil



// nil coalescing
func username(for id: Int) -> String?{
    if id == 1{
        return "taylor swift"
    }
    else{
        return nil
    }
}

//default value of anonymous
//if return value is nil it assigns anonymous
let user = username(for: 15) ?? "Anonymous"




//optional chaining
let names = ["john", "paul", "george", "ringo"]

//question mark makes it optional, if first() fails it wont try to uppercase and will return nil to beatles
let beatles = names.first?.uppercased()



//optional trying
enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}


//we can run optional try statements like this
// if error result will be assigned nil
// use try! if you are sure func wont fail
if let result = try? checkPassword("password"){
    print("result was \(result)")
}else{
    print("nope")
}




// failable initializers

let str2 = "5"
// this is a failable initializer because it can accept any kind of strings
let num2 = Int(str2)

struct Person{
    var id: String
    
    // using init? returns nil if something goes wrong, allows us to set props depending on context
    init?(id: String){
        if id.count == 9{
            self.id = id
        }
        else{
            return nil
        }
    }
}



// typecasting
class Animal {}

class Fish: Animal{}

class Dog: Animal {
    func makeNoise(){
        print("woof")
    }
}


let pets = [Fish(), Dog(),Fish(), Dog(),Fish(), Dog()]

//as?, returns an optional: it will be nil if the typecast failed, or a converted type otherwise.
for pet in pets{
    if let dog = pet as? Dog{
        dog.makeNoise()
    }
}

// summary
//1. Optionals let us represent the absence of a value in a clear and unambiguous way.

//2. Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.

//3.You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.

//4. Implicitly unwrapped optionals don’t have the safety checks of regular optionals.

//5. You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.

//6. Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.

//7. You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.

//8.If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.

//9. You can use typecasting to convert one type of object to another.
