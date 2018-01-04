//: Playground - noun: a place where people can play

import UIKit

func exampleOf(exampleName: String, completion: ()->()) {
    print("\n")
    print("Example of \(exampleName)")
    print("-------------------------")
    completion()
}

exampleOf(exampleName: "Extensions") {}
class Player {
    let sports: String!
    init(sports: String) {
        self.sports = sports
    }
}

//Extending Player class to perform Playing related activities
print("I am extending Player")
extension Player {
    //Example of extensions including methods
    func play() {
        print("I am playing \(sports)")
    }
}
let ram = Player(sports: "Cricket")
ram.play()


//MARK: Extensions can add computed instance properties and computed type properties to existing types.
exampleOf(exampleName: "Extension adding Computed Properties") {}
extension Date {
    
    //Declare as a computed property on Date type to convert into string
    var getString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-mm-YYY"
        return formatter.string(from: self)
    }
    
}
print("Today's date in string format - \(Date().getString)") //Date() gets current date


//MARK: Extensions can add new initializers to existing types.

//Note - Extensions can add new convenience initializers to a class, but they cannot add new designated initializers or deinitializers to a class.
exampleOf(exampleName: "Extension adding Initializers") {}

class Customer {
    var name: String!
    var city: String!
    var state: String!
    var registrationDate = Date() //If we don't pass any value to registrationDate, it would be taken as today's date.
    init(name: String, city: String, state: String) {
        self.name = name
        self.city = city
        self.state = state
    }
}

extension Customer {
    //Declare a convinience initialiser
    convenience init(regdDate: Date, attributes: [String: String]) {
        if let name = attributes["name"], let city = attributes["city"], let state = attributes["state"] {
            self.init(name: name, city: city, state: state)
        } else {
            self.init(name: "", city: "", state: "")
        }
        self.registrationDate = regdDate
    }
}

let customerAttributes = ["name": "Johnny", "city": "Bhubaneswar", "state": "Odisha"]
let customer1 = Customer(regdDate: Date(), attributes: customerAttributes)
print("Customer \(customer1.name!) belongs from \(customer1.city!),\(customer1.state!).")


//Extensions can be used to add subscripts to classes, structs or enums.
//Extension can also be used to add nested types to classes, structs or enums.

