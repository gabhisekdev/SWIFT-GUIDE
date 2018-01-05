//: Playground - noun: a place where people can play

import UIKit

func exampleOf(exampleName: String, completion: ()->()) {
    print("\n")
    print("Example of \(exampleName)")
    print("-------------------------")
    completion()
}


//MARK: Syntax of protocol declaration
protocol BusinessProtocol {
    //Your protocol variable and method goes here.
}

//MARK: Syntax of Protocol confirmance
class Customer: BusinessProtocol {
    //Your class definition goes here
}

//MARK: Syntax for Protocol confirming properties
exampleOf(exampleName: "Syntax for Protocol confirming properties") {}

protocol RegistrationProtocol {
    var registrationID: Int {get} // Write "get", if you are only getting variable value or and write "get set", if you are getting an
    var numberOfRegistrationYears: Int {get}
    var registrationFees: Int {get}
}

struct Company: RegistrationProtocol {
    
    var registrationID: Int
    var numberOfRegistrationYears: Int
    
    init(registrationId: Int,numberOfRegistrationYears: Int) {
        self.registrationID = registrationId
        self.numberOfRegistrationYears = numberOfRegistrationYears
    }
    
    var registrationFees: Int {
        get { // getter
            return 100 * numberOfRegistrationYears
        }
    }
    
}

let comp = Company(registrationId: 100, numberOfRegistrationYears: 50)
print(comp.numberOfRegistrationYears)
print(comp.registrationID)
print(comp.registrationFees)

