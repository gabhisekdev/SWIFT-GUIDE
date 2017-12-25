//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Swift provides 3 primary collection types -> arrays, sets, and dictionaries
func exampleOf(exampleName: String, completion: ()->()) {
    print("Example of \(exampleName)")
    print("-------------------------")
    completion()
    print("\n")
}
