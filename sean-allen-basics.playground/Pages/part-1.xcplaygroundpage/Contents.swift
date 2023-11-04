import UIKit


//Vars and constants
var highScore=0 //ALITER var highScore: Int = 0
highScore=5
//let highScore=0
//highScore=5 error


//Arrays
print("Arrays")
print()
var ages=[10, 4, 5, 6, 23, 45]
//var ages2=[] error, inference
var ages2: [Int] = [] //= must have consistent spaces on both sides
ages.count
ages.first
ages2.last //? means nil allowed. Already Int?
ages[3]
ages.append(99) //Safety aspect: can only put int element
ages.last
ages.insert(200, at:1) //insert, not replace
ages[1]
ages[2] //shifted ahead
ages.sort()
ages
print(ages) //show at bottom console
ages.reverse()
ages.shuffle()


//Set is unordered, no duplicates, performance and speed- faster insertion, removal, lookup
print()
print("Set")
print()
var ages3=[18, 33, 55, 17, 94, 26, 33, 17]
var agesSet1:Set<Int> = []
//set from array
var agesSet = Set(ages3) //duplicates removed, unordered, diff every time
//faster because everything has to be Hashable- has a hash value(identifier)
agesSet.contains(17) //constant time lookup
ages3.contains(17) //O(n)
agesSet.insert(101)
print(agesSet)


//Dictionary- has labels. key:value pairs
//let devices: [String: String]=[:]
print()
print("Dictionary")
print()
let devices: [String: String]=[
    "phone"     :   "iphone 12",
    "tablet"    :   "iPad 9th gen",
    "desktop"   :   "Asus ROG Strix G15",
    "laptop"    :   "Macbook Air M1"//, optional here
]
devices["laptop"] //Constant time lookup similar to set
devices["phone"]
devices["tablet"]
devices["desktop"]
print(devices)


//Functions
print()
print("Functions")
print()
func printInstructorsName(){
    print("Sean Allen")
}

printInstructorsName() // Function call

func printInstructorsName(name : String){
    print(name)
}

//printInstructorsName(4) Error
printInstructorsName(name: "Joe")

func add(firstNumber: Int, to secondNumber : Int) -> Int{ //fisrtNumber, secondNumber are parameter labels. Used in Scope. -> Int is return type
    //to is argument label. Makes code more readable. Optional. Can be anything at all, Not necessarily to.
    let sum=firstNumber + secondNumber
    return sum;
}

//add(firstNumber: 10, secondNumber:  20) Will Work
add(firstNumber: 10, to:  20) //Call Site. Argument label made it more readable


//if-else. Based on conditional. true/false
print()
print("If-else")
print()
var isDarkMode=true

if isDarkMode { //or if isDarkMode==true
    print("That's how it should be")
}else{
    print("Change it to dark")
}

var myHighScore=20
var yourHighScore=18

if myHighScore > yourHighScore{
    print("I win")
}else{
    print("You win")
}
//We can do if-else if-else


//for Loop. To iterate over a collection or do something x number of times
print()
print("For")
print()
let allStars=["James", "Davis", "Harden", "Doncic", "Leonard", "Harden"]

for player in allStars{ //Iterating through a collection
    print(player)
}
print()
for player in allStars where player=="Harden"{ //go through list and check
    print(player)
}
print()
for i in 0..<6 {
    print(allStars[i])
}
// Warning: Immutable value 'i' was never used; consider replacing with '_' or removing it if you don't use i. Same for player, if not used in either where or inside
//ranges
// 0...25 gives 0 to 25(26 times).

var randomInts : [Int] = []

for _ in 0..<25 { //if not using it, use _
    let randomNumber = Int.random(in: 0...100) //100 inclusive
    randomInts.append(randomNumber)
}
print()
print("Random Ints")
print(randomInts)


////Enum(Enumeration)- group of related values. Makes code clean. Avoid stringly-typed
//print()
//print("Enums")
//enum Phone{ //each enum has a case
//    case iPhone11Pro
//    case iPhoneSE
//    //or
//    case pixel, nokia
//}
//
//func getOpinion(on phone: Phone){ //on is argument label
//    if phone == .iPhone11Pro{                 //.iPhone11Pro gives error if phone== is not there
//        print("This was my previous phone")
//    }else if phone == .iPhoneSE{
//        print("It is a mini phone")
//    }else if phone == .pixel{
//        print("Googly pix")
//    }else{
//        print("OG")
//    }
//}
//
//getOpinion(on: .iPhone11Pro) //. shows options on enum Phone. Not in scope if no .
//getOpinion(on: .nokia)

print()
print("Enums")
enum Phone : String { //each enum has a case
    case iPhone11Pro = "This was my previous phone"
    case iPhoneSE = "It is a mini phone"
    case pixel="Googly pix"
    case nokia="OG"
}

func getOpinions(on phone : Phone){
    print(phone.rawValue)
}

getOpinions(on: .iPhoneSE)


//Switch statements
print()
print("switch statements")

func getOpinions2(on phone : Phone){
    switch phone{
    case .iPhone11Pro:
        print("My last phone")
    default:
        print("Bogus")
        //Warning: Switch must be exhaustive. Either handle all cases, or use default
    }
}

getOpinions2(on: .pixel)
//getOpinions2(on: .iPhone11Pro)


let matchMakingRank = 20

func determinePlayerLeague(from rank : Int){
    switch rank{
    case 0:
        print("Play the league to determine your league")
    case 0..<50:
        print("You are in BRONZE league")
    case 50..<100:
        print("You are in SILVER league")
    case 100..<200:
        print("You are in GOLD league")
    default:
        print("League of your own. -ve, +ve")
    }
}

determinePlayerLeague(from: 20)
