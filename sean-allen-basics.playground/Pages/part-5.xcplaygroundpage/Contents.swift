import UIKit

//Classes are reference types(points to a specific set of data), structs are value types(make their own copy in a new instance)
//This makes structs light weight and performant

class Developer{
    var name     :  String
    var jobTitle :  String
    var yearsExp :  Int
    
    init(name : String, jobTitle : String, yr yearsExp : Int) {
        self.name       =   name
        self.jobTitle   =   jobTitle
        self.yearsExp   =   yearsExp
    }
}

let sean = Developer(name: "Sean", jobTitle: "iOS Developer", yr: 5)

var joe = sean
joe.name
joe.name = "Joe"
joe.name
sean.name  //Sean's name now equals Joe even if we have made changes to joe

//let sean2 = Developer(sean) : Error

struct Developer2{
    var name     :  String
    var jobTitle :  String
    var yearsExp :  Int
//    init(name : String, jobTitle : String, yearsExp : Int) {  //Allowed but optional
//        self.name       =   name
//        self.jobTitle   =   jobTitle
//        self.yearsExp   =   yearsExp
//    }
}

//Struct has memberwise initializer
var sean2 = Developer2(name: "Sean", jobTitle: "iOS Developer", yearsExp: 5)
//paras optional if Nil allowed in definition

var joe2 = sean2

joe2.name = "Joe"
sean2.name
joe2.name


//Extension : to add custom functionality to existing types

extension String {
    func removeWhiteSpace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}


var alphabet = "A B C D E F"
alphabet.removeWhiteSpace()
alphabet
alphabet = alphabet.removeWhiteSpace()
alphabet

//Extension: Appiles to same class, whole project. For all.
//Inheritance: Only for subclass. For specific.
