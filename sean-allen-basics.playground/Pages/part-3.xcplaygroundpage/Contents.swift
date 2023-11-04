import UIKit

var ages = [21, 45, 18, 71, 44, 23, 17]
ages.sort()
var agesOld=ages.last //Int? means .last is optional, cause it might be empty array
var ages2 : [Int]=[]
agesOld=ages2.last

//unwrapping the optional. (Handling nil urself to avoid run time errors. 4 ways

//1. if let / if var

if let agesOld2=ages2.last { //if last exists. (Print not written deliberately, write it).
    "The oldest age is \(agesOld2)" //String interpolation
}else{
    "The array is empty"
}

//agesOld2 not in scope here

//2. nil coalescing
let oldestAge = ages2.last ?? 999 // ?? <default value>

//3. guard statement. Have to be in a function because it has to return, has to have an early exit
//ages2.append(9)
func getOldestAge(){
    guard let oldestAge = ages2.last else{
//        print("Khali") will work
        return
    }
    print(oldestAge)
}

getOldestAge()

//4. force unwrap. Dangerous.
let oldestAge2=ages.last! //Rule of thumb: don't use it. it means use value even if it is null. CRASHES. Don't even see it there is a value

//self refers to itself(current instance)

//class
class Developer{
    var name : String
    var jobTitle : String
    var yearsExp : Int? //optional nil
    //Error: class Developer has no initializers. It is compulsary if there is even a single variable(without ?, nill not allowed), otherwise optional (no var or if nill allowed).
    
    init(name : String, jobTitle : String, yr yearsExp : Int) {
        self.name=name
        self.jobTitle=jobTitle
        self.yearsExp=yearsExp
    }
    init(name : String, jobTitle : String) { //Can even create empty init if all vars are nill-allowed
        self.name=name
        self.jobTitle=jobTitle
    }
    
    func speakName() {
        print(name)
    }
    
    func tellExp(){
        print(yearsExp!)  //Use yearsExp! (or another unwrap) to remove warning. Warning: Expression implicitly coerced from 'Int?' to 'Any'. Prints Optional(10)
    }
}

let chirag = Developer(name: "Chirag", jobTitle: "iOS Dev")
chirag.name  //Dot
chirag.yearsExp
chirag.yearsExp=9
chirag.yearsExp


let sean=Developer(name: "Sean", jobTitle: "iOS Dev", yr: 2)
sean.yearsExp //Can't get with yr(argument label)

//class Khali{
////    var name : String. Init compulsory if it has even a single variable.
////    init(){ //Optional if there is no non-nill class variable. optional even in case of nill allowed
////        print("Khali")
////    }
//    var name : String?
//}
//
//let k = Khali()
//
//"Hello \(3)" //String interpolation

let angela=Developer(name: "Angela", jobTitle: "Dev", yr: 10)
angela.speakName()

angela.tellExp() //will print Optional(10) if there is no !(unwrap) in function
