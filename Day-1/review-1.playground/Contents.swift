import UIKit

var greeting = "Hello, playground"

//review - 1

// variables and constants
var name = "alex"
name = "bob"

//let can only be set once
let num = 1




// types of data
var name2 = "alex"

//type annotations
//swift always wants to know what a variable will hold
var myName: String
myName = "new name"

var age: Int
age = 24

var pi: Double
pi = 3.1415

var longitude: Float
longitude = -1286.783333


var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

// always better to use type inference than type annotations
var name3 = "tim"

//but we can use both
var user: String = "user 1 is here"




//operators
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

//add doubles
var dub1 = 1.1
var dub2 = 2.2
var dubtot = dub1 + dub2

//add strings
var user1 = "alex"
var user2 = "bob"

var both = user1 + " and " + user2

//modulus - remainder 1
var res = 10 % 3

//comparison operators -results in true/false
dubtot > 3
dubtot >= 3
dubtot > 4
dubtot < 4
dubtot == 4

name = "alex"
name == "Alex"

var iAmLate = true
iAmLate
//flips boolean value
!iAmLate




//String Interpolation
// combining variables and strings

var newName = "Alex"
name = "your name is \(newName+newName+newName)"
var speech = "your name is \(newName)+ you are \(age) and you live at \(longitude)"



// Arrays
var evenNums = [2,4,6,8]
var songs: [String] = ["shake it off", "you belong with me", "back to december"]
//songs: [any] will hold any values in array

songs[0]
songs[1]

//find type of data
type(of: songs)


//cannot store value of array by indexing

//operators on array
var songs1 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var bothSongs = songs1 + songs2

bothSongs += ["everything has changed"]

print(bothSongs)



//dictionaries
// common type of collection
//different in that allows data to be found based on key/value

//array, no value to order
var person = ["taylor","allision", "swift", "december", "taylorswift.com"]

var dictPerson = [
    "first": "taylor",
    "last": "swift",
    "month": "december",
    "site": "taylorsift.com"
]

//makes it easier to store lots of differently valued data
dictPerson["first"]
dictPerson["month"]
dictPerson["site"]



//conditional statements
var action: String
var person1 = "hater"

if person1 == "hater"{
    action = "hate"
}
else if  person1 == "player"{
    action = "play"
}
else{
    action = "cruise"
}

// using && and ||
stayOutTooLate = true
nothingInBrain = true

// both must be true
//shortcircuit evaluation - if first one is false, it does not continue
if stayOutTooLate && nothingInBrain{
    action = "cruise"
}
else if !stayOutTooLate && !nothingInBrain{
    action = "not cruise"
}
else if stayOutTooLate || nothingInBrain{
    action = "one or the other"
}



//loops
for i in 1...10{
    print("\(i) * 10 is \(i*10)")
}

var str = "fakers gonna"

for _ in 1...5{
    str += " fake"
}
print(str)


for i in 1..<4{
    print(i)
}

//looping through array
for song in songs{
    print("my favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ..< people.count {
    print("\(people[i]) gonna \(actions[i])")
}

for i in 0..<people.count{
    var str1 = "\(people[i]) gonna"
    
    for _ in 1...5{
        str1 += " \(actions[i])"
    }
    print(str1)
}


//game loops -repeating forever

var counter = 0
while true{
    print("counter is now \(counter)")
    counter += 1
    
    if(counter == 556){
        break
    }
}


var songs3 = ["Shake it Off", "You Belong with Me", "Love Story"]

for song in songs3 {
    if song == "You Belong with Me"{
        continue
    }
    print("my favorite song is \(song)")
}




// switch cases
// they are exhaustive

//use fallthrough keyword to have each switch success case move to next one
let liveAlbums = 2

switch liveAlbums{
case 0...1:
        print("you are starting out")
case 2...3:
        print("you just released live itunes")
        
case 4...5:
        print("you released speak now world tour")
    default:
        print("have you done anything?")
}

