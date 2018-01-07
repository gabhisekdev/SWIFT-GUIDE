//: Playground - noun: a place where people can play

import UIKit

func exampleOf(exampleName: String, completion: ()->()) {
  print("\n")
  print("Example of \(exampleName)")
  print("-------------------------")
  completion()
}


//From docs,(https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html#//apple_ref/doc/uid/TP40014097-CH26-ID179), "Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define. You can write code that avoids duplication and expresses its intent in a clear, abstracted manner."



//---------------------MARK: Syntax of Generic functions--------------------------
exampleOf(exampleName: "Syntax of Generic functions") {}
func swapValues<T>(a: inout T,b: inout T)->(first: T, second: T) { //T is a representation for generic type, u can use T or anything as you like.
    let c = b
    b = a
    a = c
    return(a,b)
}

var firstValue = 20
print("firstValue - \(firstValue)")
var secondValue = 30
print("secondValue - \(secondValue)")
let swapResult = swapValues(a: &firstValue, b: &secondValue)
print("After Swap..... First Value - \(swapResult.first), Second Value - \(swapResult.second)")


//---------------------MARK: Syntax of Generic classes--------------------------
exampleOf(exampleName: "Generics in classes and struct") {}
struct Queue<Element> {
}

class BinaryTree<Element> {
}

//Let us create a stack for pushing data types.
struct Stack<Element> {
    
    var allElements = [Element]()
    
    mutating func push(element: Element) {
        allElements.append(element)
    }
    
    mutating func pop(element: Element) {
        allElements.first
    }
    
}

var intStack = Stack<Int>()
intStack.push(element: 2)
intStack.push(element: 3)
print("All elements in stack - \(intStack.allElements)")

//--------------------------MARK: Extending a Generic Type-------------------------
exampleOf(exampleName: "Extending a Generic Type") {}
extension Stack {
    func elementAt(index: Int)->Element? {
        if index <= allElements.count {
            return allElements[index]
        } else {
            return nil
        }
    }
}


//---------------------------MARK: Constraining a Generic Type----------------------
exampleOf(exampleName: "Constraining a Generic Type") {}
//We are constrainting our generic Type "T" to obey the equitable protocol.
func isEqual<T: Equatable>(lhs: T,rhs: T) -> Bool {
    if lhs == rhs {
        return true
    }
    return false
}


//---------------------------MARK: Enumerations With Associated Values----------------------
enum Result<Value> {
    case success(Value), failure(String)
}

func divide(number: Int, by dividend: Int) -> Result<Int> {
    guard y != 0 else {
        return .failure("Trying to divide by zero.")
    }
    return .success(x / y)
}



