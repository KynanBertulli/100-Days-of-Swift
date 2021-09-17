import UIKit

//declaring and calling a function
func printHelp(){
    let message = """
        
        Welcome ot MyApp
        Run this app inside a directory of Images
        MyApp will resize them into thumbnails
        """
    print(message)
}
printHelp()

//functions with parameters
func square(number: Int){
    print(number * number)
}
square(number: 8)


//returning data
//takes in an Int and returns an Int
//*returning more than one value would be good to use a tuple
func square2(number: Int) -> Int{
    return number * number
}


print(square2(number: 8))

//labelling parameters
//outside variable is called to, inside is called name
func sayHello(to name: String){
    print("hello, \(name)!")
}
//easier to read a "say hello to taylor"
sayHello(to: "Taylor")



//omitting parameter labels
//able to enter parameters when calling function w/o a label
//better to use labels as gives good description
func greet(_ person: String){
    print("hello, \(person)")
}
greet("Taylor")



//default parameters
func greet(_ person: String, nicely: Bool = true){
    if(nicely == true){
        print("hello, \(person)")
    }
    else{
       print("oh its just you")
    }
}

//now we can call and the function will automatically assign parameters with true for nicely otherwise specified
greet("taylor")
greet("alex", nicely: false)



// Variadic Functions
//they accept any number of functions with the same type
//example:
print("haters","gonna","hate")

//... signifies that this function can be called many times using any number of numbers parameters
func square4(numbers: Int...){
    for number in numbers{
        print("\(number) squared is \(number * number)")
    }
}
square4(numbers: 1,2,3,4,5)



//throw functions
//error catching

enum PasswordError: Error{
    case obvious
}

//this function can now catch if a parameters is against our set error catch
func checkPassword(_ password: String) throws -> Bool{
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

enum ChargeError: Error{
    case noCable
    case noPower
}
func chargePhone(atHome: Bool) throws {
    if atHome {
        print("Phone is charging...")
    } else {
        throw ChargeError.noPower
    }
}



// running throwing functions
//do - used before any function that might cause an error
//try let's us call functions that could throw errors w/o causing problems
//catch - handle problems on our own
do {
    try checkPassword("password")
    print("password is good")
}catch{
    print("can't use that password")
}



//in-out parameters
//allows us to pass parameters to functions that will calculate and return changes to the original variable passed in to
func doubleInPlace(number: inout Int){
    number += 2
}

var myNum = 10
//must use '&' before variable name
doubleInPlace(number: &myNum)
print(myNum)
