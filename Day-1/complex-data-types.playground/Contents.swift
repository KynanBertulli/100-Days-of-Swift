import UIKit

var greeting = "Hello, playground"

//arrays - collections of values

let john = "john lennon"
let george = "george harrsion"
let paul = "paul mccartney"
let ringo = "ringo star"

let beatles = [john, paul, george, ringo]
let new_beatles = ["test", "test", "test"]
let new_new_beatles :[String] = ["johnny", "georgey", "pauly"]

let new_member = beatles[0]
//sets - collections except items arent stored in any order, no item can be a dup.

let colors = Set(["red", "green", "blue" ])
//same values, no particular order
let colors2 = Set(["red", "red","green", "blue" ,"blue" ])


//tuples - store several values in a single values
//cant remove or add
//cant change type from one craeted with

var name = (first: "Taylor", last: "Swift")

//how to get certain values
name.0
name.first


// arrays vs sets vs tuples
// tuple - if you need a fixed set of related values where every value has a name
// set - values must be unique, or need to check if a group has atleast one entry of this
// arrays - collection of values that need values or where ordering matters
 

//dictionaries - store anything you want
//key/value pairs
let height = [
    "taylor swift": 1.78,
    "ed sheeran": 1.73
]

// to get values in dictionaries
height["taylor swift"]

//type annotation with dictionaries
let new_height :[String: Double]
new_height = [
    "hello": 12.112
]

//using a dictionary value that doesn't exist will default to nil value

let favoriteIcecream = [
    "paul": "chocolate",
    "sophie": "vanilla"
]

//getting a value
favoriteIcecream["paul"]
//value from key that doesnt exist will give nil, we can specific a new default value "unknown"
favoriteIcecream["charlotte", default:"unknown"]


//empty collections
//empty dictionary:
var teams = [String: String]()

teams["Paul"] = "red"

//empty array:
var results = [Int]()

//empty sets
var words = Set<String>()


// Enums - are groups of values, easy to use
enum Results {
    case success
    case failure
}

//assign to variable
let result = Results.failure

//enum associated values

enum Planet : Int{
    case mercury = 1
    case earth
    case venus
    case mars
}
let earth = Planet(rawValue: 2)


//summary
//arrays, sets, tuples, dictiionary - all store a lot of data in one variable

