import UIKit

//for loops
let count = 1...10


//print in range of count
for number in count{
    print("number is \(number)")
}

//print in range of array
let albums = ["red", "1989", "reputation"]

for album in albums{
    print("taylor swift has made \(album)")
}
// _ is used if not using value of for loop


//while loops
//continues for indefinite time
var num = 1

while num <= 20{
    print("num is \(num)")
    num += 1
}

// repeat loops
//similar to while but while comes at end
//basically a do-while
//always runs atleast once
var num2 = 1
repeat {
    print(num2)
    num += 1
}while(num <= 20)



//exiting a loop
//break keyword

var countDown = 10
while countDown >= 0{
    print(countDown)
    if(countDown == 4){
        print("very boring lets go!")
        break
    }
    countDown -= 1
}


//exit nested loops
//exits both loops
outerLoop: for i in 1...10{
    for j in 1...10{
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if(product == 50){
            print("we hit 50 and can finish now")
            break outerLoop
        }
    }
}

//skipping loops
//skip current item in loop
for i in 1...10{
    if i % 2 == 1 {
        // continue skips anything that is even, only shows odds
        continue
    }
    print(i)
}


//infinite loops - always true, must have an end condition tho!
var new_count = 1
while true{
    print(" ")
    
    if new_count == 273{
        break
    }
    new_count += 1
}

