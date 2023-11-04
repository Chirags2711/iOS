import UIKit

enum Cars{
    case Swift, i20, jaguar, ferrari
}

func getCar(car: Cars){
    print(car == .jaguar)
}

getCar(car: .jaguar)
