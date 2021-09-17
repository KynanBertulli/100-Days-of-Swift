import UIKit

var greeting = "Hello, playground"

//classes never come with a memberwise initializer
// need to use init method
class Dog{
    var name: String
    var breed: String
    
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "poppy", breed:"poodle")



// Class inheritance
//poodle is a subclass of Dog
class Poodle: Dog{
    
    init(name: String){
        // Pass certain params to super class using super init
        super.init(name: name, breed: "Poodle")
    }
}



// overriding methods
// useful if subclass is doing the same thing of parent that you want done differently
class Dog2{
    func makeNoise(){
        print("woof")
    }
}

class Poodle2: Dog2{
    override func makeNoise(){
        print("yip!")
    }
}

let poppy2 = Poodle2()
poppy2.makeNoise()




// final classes
// disallows others from building on top of your classes, uses your classes as they are
final class Cat{
    var name: String
    var breed: String
    
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
}



// copying objects
class Singer{
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
print(singerCopy.name)
singerCopy.name = "Justin Beiber"
//both objects are pointing to same point in memory, so effecting one affects the other
print(singer.name)



// deinitializers
// classes can have deinitializers
// pieces of code that code run when an instance of class is destroyed

class Person{
    var name = "John Doe"

    init(){
        print("\(name) is alive")
    }
    
    func printGreeting(){
        print("hello i am \(name)")
    }
    
    //deinit method is called when the class is destroyed
    deinit{
        print("\(name) says goodbye")
    }
}

for _ in 1...3{
    let person = Person()
    person.printGreeting()
}



//mutability
// classes dont need mutating keyword
//change any keyword on a class

class Singer2{
    var name = "Taylor Swift"
}

let taylor = Singer2()
//we can redeclare even a constant with classes.. to stop we must change the property variable to constant
taylor.name = "ed sheeran"
print(taylor.name)


//Summary

//1. Classes and structs are similar, in that they can both let you create your own types with properties and methods.

//2. One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.

//3.You can mark a class with the final keyword, which stops other classes from inheriting from it.

//4. Method overriding lets a child class replace a method in its parent class with a new implementation.

//5. When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.

//6. Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.

//7. Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
