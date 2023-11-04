import UIKit

class Developer{
    var name     :  String?
    var jobTitle :  String?
    var yearsExp :  Int?
    
    init(name : String, jobTitle : String, yr yearsExp : Int) {
        self.name       =   name
        self.jobTitle   =   jobTitle
        self.yearsExp   =   yearsExp
    }
  
    func speakName() {
        print(name!)
    }
}


class iOSDeveloper :Developer{
    var favoriteFramework: String?
    
    func speakFavoriteFramework() {
        if let favoriteFramework = favoriteFramework{
            print(favoriteFramework)
        } else{
            print("I don't have a favorite framwwork")
        }
    }
    
    override func speakName() {
        print("\(name!) - \(jobTitle!)") //Force unwrapped
    }
}

let sean = iOSDeveloper(name: "Sean", jobTitle: "iOS Developer", yr: 5) //Will use Developer's init automatically

sean.speakFavoriteFramework() // If we print functions not returning anything(without return type), it prints ()
//sean.speakName() //Will use Developer's function unless overridden

sean.speakName() //Overridden

