import UIKit


//passing a closure function that accepts a parameter to a function
//action function declared to accept a String
func travel(action: (String) -> Void){
    print("im getting ready to go")
    // takes string parameter "london"
    action("london")
    print("now i have arrived")
}

travel{(place: String) in
    print("im gonig to \(place) in my car")
}

func getMeasurement(handler: (Double) -> Void) {
    let measurement = 32.2
    handler(measurement)
}
getMeasurement { (measurement: Double) in
    print("It measures \(measurement).")
}



//using closure functions as a parameter to a function if it returns a value

func travel2(action: (String) -> String){
    print("im getting ready to go")
    let description = action("paris")
    print(description)
    print("i arrived")
}

//this returns the value to be used in main func instead of printing in here
travel2{ (place: String) -> String in
    return "im going to \(place) in my car"
}



//shorthand for parameters
func travel3(action: (String) -> String){
    print("im getting ready to go")
    let description = action("paris")
    print(description)
    print("i arrived")
}

//swift can infer the paramter data type and we dont need to create vars for them
//$0 can be used and swift will know it means the parameter
//one line funcs dont need return keyword
travel3{
   "im going to \($0) in my car"
}



// closure with multiple paramters
func travel4(action: (String, Int) -> String){
    print("im getting ready to go")
    let description = action("spain", 60)
    print(description)
    print("i arrived")
}

travel4{
    "i'm going to \($0) at \($1) mph"
}



// returning a closure from a function

func travel5() -> (String) -> Void{
    return {
        print("im going to \($0)")
    }
}

let result = travel5()
result("Google")
