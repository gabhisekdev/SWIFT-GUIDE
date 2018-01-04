//: Playground - noun: a place where people can play

import UIKit

func exampleOf(exampleName: String, completion: ()->()) {
    print("Example of \(exampleName)")
    print("-------------------------")
    completion()
    print("\n")
}

exampleOf(exampleName: "Extensions") {
}
class Player {
    let sports: String!
    init(sports: String) {
        self.sports = sports
    }
}

//Extending Player class to perform Playing related activities
extension Player {
    func play() {
        print("I am playing \(sports)")
    }
}
let ram = Player(sports: "Cricket")
ram.play()


//Extensions can add computed instance properties and computed type properties to existing types.
exampleOf(exampleName: "Computed Properties") {
}
extension Date {
    
    //Declare aa computed property on Date type to convert into string
    var getString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-mm-YYY"
        return formatter.string(from: self)
    }
    
}
print("Today's date in string format - \(Date().getString)") //Date() gets current date
