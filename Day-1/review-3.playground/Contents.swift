import UIKit

//properties

struct Person{
    var clothes: String{
        //before a property is changed
        willSet{
            updateUI(msg: "I'm chaning from \(clothes) to \(newValue)")
        }
        //after a property is set
        didSet{
            updateUI(msg: "i just changed from \(oldValue) to \(clothes)")
        }
    }
//    var shoes: String
   
}
func updateUI(msg: String){
       print(msg)
   }
var taylor = Person(clothes: "t-shirts")

taylor.clothes = "short skirts"

//willSet and didSet

struct Person2{
    var age: Int
    
    var ageInDogYears: Int{
        get{
            return age * 7
        }
    }
}
 
var fan = Person2(age: 25)
print(fan.ageInDogYears)




//Static properties
struct TaylorFan {
    static var favoriteSong = "look what you made me do"
    
    var name: String
    var age: Int
}

let fan1 = TaylorFan(name: "james", age: 25)
print(TaylorFan.favoriteSong)



//public - everyone can read and write your properties
//internal - only your code can read/write properties
//file private - swift code in the same file dir
//private - only in the same group

class TaylorFan2{
    private var name: String?
    
}




//polymorphism and typecasting
class Album {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func getPerformance() -> String{
        return "album \(name) sold lots"
    }
}

class StudioAlbum: Album{
    var studio : String
    
    init(name: String, studio: String){
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "the studio album \(name) sold lots"
    }
}


class LiveAlbum: Album{
    var location: String
    init(name: String, location: String){
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "the live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "taylor swift", studio: "the castles studio")

var fearless = StudioAlbum(name: "fearless", studio: "amieeland")

var itunesLive = LiveAlbum(name: "itunes live", location: "new york")

var allAlbums: [Album] = [taylorSwift, fearless]

//forced downcasting
for album in allAlbums as! [StudioAlbum]{
    print(album.getPerformance())
//    optional downcasting - as?
    let studioAlbum = album as! StudioAlbum
        print(studioAlbum.studio)
    
//    else if let livealbum = album as? LiveAlbum{
//        print(livealbum.location)
//    }
}

//typecasting
//as?  - optional downcastin - i think it might be true, but not sure
//as!  - forced downcasting - i know it will be true, and willing to see it crash if not


let number = 5
let text = String(number)

print(text)



// closures
// a variable that holds code
let vw = UIView()

UIView.animate(withDuration: 0.5){
    vw.alpha = 0
}

