//: Playground - noun: a place where people can play

import UIKit

func exampleOf(exampleName: String, completion: ()->()) {
  print("\n")
  print("Example of \(exampleName)")
  print("-------------------------")
  completion()
}


//---------------------MARK: Syntax of protocol declaration--------------------------

protocol BusinessProtocol {
  //Your protocol variable and method goes here.
}

//----------------------MARK: Syntax of Protocol confirmance------------------------------

class Customer: BusinessProtocol {
  //Your class definition goes here
}

//----------------------MARK: Syntax for Protocol properties requirements------------------

exampleOf(exampleName: "Syntax for Protocol properties requirements") {}

protocol RegistrationProtocol {
  var registrationID: Int {get} // Write "get", if you are only getting variable value or and write "get set", if you are getting an
  var numberOfRegistrationYears: Int {get}
  var registrationFees: Int {get set}
}

struct Company: RegistrationProtocol {
  
  var registrationID: Int
  var numberOfRegistrationYears: Int
  var tax: Int = 0
  
  init(registrationId: Int,numberOfRegistrationYears: Int) {
    self.registrationID = registrationId
    self.numberOfRegistrationYears = numberOfRegistrationYears
  }
  
  var registrationFees: Int {
    get { // getter
      return 100 * numberOfRegistrationYears
    }
    set {
      tax = 10 * numberOfRegistrationYears
    }
  }
  
}

let comp = Company(registrationId: 100, numberOfRegistrationYears: 50)
print(comp.numberOfRegistrationYears)
print(comp.registrationID)
print(comp.registrationFees)

//--------------------MARK: Protocol Method Requirements-----------------------

exampleOf(exampleName: "Protocol Method Requirements") {}
protocol FireSafety {
  func callPolice()
}

struct FireAgency: FireSafety {
  func callPolice() {//We have to confirm to the protocol by declaring the method
    print("Calling 101...")
    //Please call fire brigade in reality, not only just print ;]
  }
}


//-----------------------MARK: Protocol Initializer Requirements-----------------

exampleOf(exampleName: "Protocol Initializer Requirements") {}
protocol TrafficRules {
  init(rules: [String])
}

struct TrafficStation: TrafficRules {
  init(rules: [String]) { //You can declare it as required init(rules: [String]) as well, to make sure confirming classes implement this method
  }
}


//-----------------------MARK: Protocol As a Type-------------------------------

exampleOf(exampleName: "Protocol As a Type") {}
class Club {
  let fireSafetyMeasure: FireSafety!
  let clubName: String!
  init(fireSafetyMeasure: FireSafety, clubName: String) {
    self.clubName = clubName
    self.fireSafetyMeasure = fireSafetyMeasure
  }
  
  func fireDetected() {
    fireSafetyMeasure.callPolice()
  }
}

let romaniaClub = Club(fireSafetyMeasure: FireAgency(), clubName: "Romania Club") //An instance of FireAgency can be passed as an argument for fireSafetyMeasure as that too confirms to FireSafety.
romaniaClub.fireDetected()


//-------------------------MARK: Delegation----------------------------

exampleOf(exampleName: "Delegation") {}
//Declare a protocol which will inform the mathematics study results of a student.
protocol MathStudy {
  func numberCountingDidFinish()
}

//A dedicated structure handling the maths study of a student
struct StudyMath {
  
  var delegate: MathStudy? = nil //declare a delegate MathStudy
  func startCounting(from startNumber: Int, to endNumber: Int) {
    for i in startNumber...endNumber {
      print(i)
      if i == endNumber && delegate != nil {
        delegate?.numberCountingDidFinish() //The delegate gets called and informs the calling object that the counting of numbers has finished.
      }
    }
  }
  
}

class Student: MathStudy {
  
  //Start Maths study
  func startMathStudy() {
    var mathematicsStudy = StudyMath()
    mathematicsStudy.delegate = self //Tell the delegate that, this class will be handling the delegate call.
    mathematicsStudy.startCounting(from: 1, to: 10) // ask the student to start counting
  }
  
  //Delegate gets called when the Student finishes counting
  func numberCountingDidFinish() {
    print("Counting Finished")
    }
    
}

let shyam = Student()
shyam.startMathStudy()


//-------------------------MARK: Protocol Inheritance----------------------------

exampleOf(exampleName: "Protocol Inheritance") {}
//A protocol can inherit one or more other protocols
protocol FireProtection: FireSafety {
    func sprayWater() //Now FireProtection has two methods to be confirmed by implementing class,struct or enums i.e One of FireSafety and the other of itself
}


//-------------------------MARK: Class-Only Protocols----------------------------

exampleOf(exampleName: "Class-Only Protocols") {}
//You can limit protocol adoption to class types (and not structures or enumerations) by adding the AnyObject protocol to a protocol’s inheritance list.
protocol TrafficRule: AnyObject {
}


//-------------------------MARK: Protocol Composition----------------------------

exampleOf(exampleName: "Class-Only Protocols") {}
//We can conform multiple protocols at the same time.
struct SomeStruct: BusinessProtocol, FireProtection {
    func sprayWater() {}
    func callPolice() {}
}


//---------------------MARK: Check for Protocol Confirmance -------------------------
exampleOf(exampleName: "Check for Protocol Confirmance") {}
//You can use the "is" and "as" operators described in Type Casting to check for protocol conformance, and to cast to a specific protocol

let objects: [AnyObject] = [Student(),SomeStruct() as AnyObject]
for object in objects {
    if let _ = object as? MathStudy {
        print("\(object) confirm to MathStudy")
    } else {
        print("\(object) doesn't confirm to MathStudy")
    }
}

//--------------------MARK:Optional Protocol Requirements------------------
exampleOf(exampleName: "Optional Protocol Requirements") {}
@objc protocol CalculateTotalProfit {
    @objc optional func provideAdequateBusinessData()
}

class WineShop: CalculateTotalProfit {
    //It doen't throw any error asking for compulsory confirmation
}

//Note: Protocol can be extended using extensions. Syntax similar to normal class or struct extensions.
