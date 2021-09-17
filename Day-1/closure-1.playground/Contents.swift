import UIKit

var greeting = "Hello, playground"


// closure - assigning a function to a variable
let driving = {
    print("im driving")
}
//function can be called with var like this
driving()


//accepting parameters to closure function
//we place () next to curly brace and use in keyword
let driving2 = {(place: String) in
    print("I'm going to \(place)")
}

//no labels, or vars needed for closure funcs
driving2("london")



//return values from closure functions
//we use arrow and return data type before in
let driving3 =  {(place: String) -> String in
    return "im going to \(place)"
}

print(driving3("Paris"))



//closures as parameters
//passing closures into functions
let driving4 = {
    print("im driving")
}

//we declare that this function uses a closure func we are going to rename as action
func travel(action: () -> Void){
    print("im getting ready to go")
    action()
    print("i have arrived")
}

//passing our driving function into the travel function
travel(action: driving4)


//trailing closure syntax
//instead of passing the closure function as a parameter you can declare the function after in parenthesis
func travel2(action: () -> Void){
    print("\n where do you wanna travel?")
    action()
    print("ok im ready!")
}

//closure func delcared after the above func uses it
travel2{
    print("i am the closure func.. lets go to spain")
}

func holdClass(name: String, lesson: () -> Void) {
    print("Welcome to \(name)!")
    lesson()
    print("Make sure your homework is done by next week.")
}
holdClass(name: "Class"){
    print("All we are is dust in the wind, dude.")
}
