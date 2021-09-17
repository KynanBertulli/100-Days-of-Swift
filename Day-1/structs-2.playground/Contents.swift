import UIKit

//initializers - special ways to create your structs
//init method
struct User {
    var username: String
    // defaults all users to "anonymous"
    
    // no func before init
    init(){
        username = "anonymous"
        print("creating user")
    }
}

var user = User()
//properties are set after init
user.username = "alex"




//current instances
//self keyword
struct Person2{
    var name: String
    
    init(name: String){
        print("\(name) was born!")
        // assigns this current instance with a specific value
        self.name = name
    }
}

var p1 = Person2(name: "alex")
print(p1.name)
var p2 = Person2(name: "bob")
print(p2.name)


 
//Lazy properties - create certain properties only when they're needed
struct FamilyTree {
    init(){
        print("create family tree")
    }
}

struct PersonOfFamily{
    var name: String
    
//    not accessed for every person only when accessed
    lazy var familyTree = FamilyTree()
    
    init(name: String){
        self.name = name
    }
}

var ed = PersonOfFamily(name: "ed")



// static properties and static methods
// static properties are maintained in the struct between all instances
// classSize grows from each new student added
struct Student{
    static var classSize = 0
    var name : String
    
    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}

let Ed = Student(name: "Ed")
let taylor = Student(name: "taylor")
//to access the static prop we have to access the struct and not an instance of it
print(Student.classSize)



//access controls
// lets us declare which properties and methods we can access
//public and private

struct Worker{
    
    //now we can only access the values of this property from inside this struct
    private var id: String
    
    
    init(id: String){
        self.id = id
    }
    
    func identify() -> String{
        return "my social security number is \(id)"
    }
}

let Bob = Worker(id: "12345")

//print(Bob.id)
print(Bob.identify())


//Structs Summary
//1. You can create your own types using structures, which can have their own properties and methods.

//2. You can use stored properties or use computed properties to calculate values on the fly.

//3. If you want to change a property inside a method, you must mark it as mutating.

//4. Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.

//5. Use the self constant to refer to the current instance of a struct inside a method.


//6. The lazy keyword tells Swift to create properties only when they are first used.


//7. You can share properties and methods across all instances of a struct using the static keyword.

//8. Access control lets you restrict what code can use properties and methods.
