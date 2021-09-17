import UIKit

func favoriteAlbum(name: String, year: Int){
    print("my favorite is \(name) it was released in \(year)")
}

favoriteAlbum(name: "hello", year: 2020)


// labelling
func countLetters(in str: String){
    print("this string \(str) has \(str.count) letters")
}

countLetters(in:  "hello")


//creating a function that returns a value, if true
func albumIsTaylors(name: String) -> Bool{
    if name == "Taylor Swift"{return true}
    if name == "Fearless"{return true}
    return false
}
 
if albumIsTaylors(name: "Fearless"){
    print("thats an album by her!")
}else{
    print("who made that?")
}



// optionals
// might have a value, might not
func getHaterStatus(weather: String) -> String?{
    if weather == "sunny"{
        return nil
    }
    else{
        return "Hate"
    }
}

//must define status as an optional value as it can retrun nil
var status: String? = getHaterStatus(weather: "rainy")

func takeHaterAction(status: String){
    if status == "Hate"{
        print("hating")
    }
}
if let haterStatus = getHaterStatus(weather: "rainy"){
    // unwrapped status contains an non optional string
    takeHaterAction(status: haterStatus)
}
else{
    //in case you want an else block
}



func yearAlbumReleased(name: String) -> Int?{
    if name == "taylor swift"{return 2006}
    if name == "fearless"{return 2008}
    return nil
}

if let newAlbum = yearAlbumReleased(name: "white album"){
}else{
    print("thats not an album by ther")
}



//optional chaining
//dont force unwrap if it doesnt have a value, will crash

func albumReleased(year: Int) ->String?{
    switch year{
    case 2006: return "taylor"
    case 2008: return "fearless"
    default: return nil
    }
}

//the question mark below signifies that the functions that rely on this will only run if it returns a value that isnt nil
let album = albumReleased(year: 2006)?.uppercased()
print("the album is \(album)")

//nil coalescing operator simplifies if a value can be used
//use a if you can, if you cant use b
//if the below function returns nil use "unknown"
let album1 = albumReleased(year: 206) ?? "unknown"
print("the album is \(album1)")



// Enums
enum WeatherType{
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

//reuse getHaterStatus func
func getHaterStatus2(weather: WeatherType) -> String?{
    switch weather{
    case .sun: return nil
        
        // get values within enum case
    case .wind (let speed) where speed < 10: return "meh"
        
    case .cloud, .wind: return "dislike"
    case .rain: return "hate"
        //all cases of enums must be added
    case .snow: return "d"
    }
}

getHaterStatus2(weather: .cloud)



// Structs
//structs start with memberwise initializer: create struct with new values for each property
struct Person{
    var clothes: String
    var shoes: String
    
    func describe(){
        print("i like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "t-shirt", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

print(taylor.clothes)
print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)
taylorCopy.describe()



//classes
// another way of building complex data types
//1. you dont get automatic memberwise initializers, you must make your own
//2. you can define a class based off another class
//3. an instance of a class is called an object

class Person2{
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String){
        self.clothes = clothes
        self.shoes = shoes
    }
}

//class inheritance
class Singer{
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    //to use apple sys func you need to use @objc
     func sing(){
        print("la la la la")
    }
}

class CountrySinger: Singer{
    
    override func sing(){
        print("yee ha!!")
    }
}

class HeavyMetalSinger: Singer{
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int){
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    override func sing(){
        print("GRRRRR RAAA RGGHHHH")
    }
}


var taylorSwift = Singer(name: "taylor", age: 25)
taylorSwift.sing()
var youngTaylor = CountrySinger(name: "taylor", age: 18)

youngTaylor.sing()

var metalTaylor = HeavyMetalSinger(name: "Taylorzz", age: 28, noiseLevel: 11)
metalTaylor.sing()
