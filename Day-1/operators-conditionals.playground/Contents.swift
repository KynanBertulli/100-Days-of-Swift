import UIKit

let firstScore = 12
let secondScore = 4

// basic arithmetic operations
let total = firstScore + secondScore

let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = firstScore % secondScore


//operator overloading - combining variables
let meaningOfLife = 42
let doubleMeaning = 42 + 42

//adding strings
let fakers = "fakers gonna"
let finish = fakers + "fake"

//adding arrays
let firstTwo = ["john", "paul"]
let secondTwo = ["george", "ringo"]
let beatles = firstTwo + secondTwo

//swift is type safe - cant add int to string


// compounding assignment operators - revalue & assign
//lessen score by 5
var score = 90
score -= 5

//adding string to end of var
var quote = "the rain in spain falls mainly on the "
quote += "spaniards"


//comparison operators - ability to draw to draw logical true/false from expressions
let oneScore = 6
let twoScore = 4

//checks if values are the same - false
oneScore == twoScore

//checks if not the same - true
oneScore != twoScore

//size comparisons
oneScore > twoScore
oneScore <= twoScore

//can also compare alphabetical order of strings
"taylor" < "swift"


//conditionals
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21{
    print("BlackJack!")
}
else{
    print("regular cards")
}


//combining conditions
// && - and
// || - or
let age1 = 12
let age2 = 21

//&& - both conditions must be true
if(age1 > 18 && age2 > 18){
    print("both are over 18!")
}

//|| - either condition must be true
if(age1 > 18 || age2 > 18){
    print("both are over 18!")
}


//ternary operators . condition plus true or false


let oneCard = 11
let twoCard = 10

print(oneCard == twoCard ? "cards are same" : "cards are diff")


//switch statements
let weather = "sunny"

switch  weather {
case "rain":
    print("bring umbrella")
case "sunny":
    print("wear sunscreen")
default:
    print("goodbye")
}


//range operators
//
let score2 = 85
switch score2{

case 0..<50:
    print("you failed")
case 50...85:
    print("you got B")
default:
    print("you passed")
}
