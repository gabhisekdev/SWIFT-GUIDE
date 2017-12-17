//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a: String? = "a"

func exampleOf(exmpleName: String, completion: ()->()) {
   print("Example of \(exmpleName)")
   completion()
   print("\n")
}


let persons = ["Hari","Shyam","Ram","Johnnny","Puttu"]

//One-Sided Ranges
exampleOf(exmpleName: "One Sided Range Pattern - 1") {
    for items in persons[2...] {
        print(items)
    }
}

exampleOf(exmpleName: "One Sided Range Pattern - 2") {
    for items in persons[...2] {
        print(items)
    }
}


exampleOf(exmpleName: "One Sided Range Pattern -3") {
    for items in persons[..<2] {
        print(items)
    }
}


//PartialRangeThrough
exampleOf(exmpleName: "Range Type - PartialRangeThrough") {
    let range = ...5
    print(range)
}

