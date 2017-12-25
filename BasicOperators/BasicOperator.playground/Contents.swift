//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a: String? = "a"

func exampleOf(exampleName: String, completion: ()->()) {
    print("Example of \(exampleName)")
    print("-------------------------")
    completion()
    print("\n")
}


let persons = ["Hari","Shyam","Ram","Johnnny","Puttu"]

//One-Sided Ranges
exampleOf(exampleName: "One Sided Range Pattern - 1") {
    for items in persons[2...] {
        print(items)
    }
}

exampleOf(exampleName: "One Sided Range Pattern - 2") {
    for items in persons[...2] {
        print(items)
    }
}


exampleOf(exampleName: "One Sided Range Pattern -3") {
    for items in persons[..<2] {
        print(items)
    }
}


//PartialRangeThrough
exampleOf(exampleName: "Range Type - PartialRangeThrough") {
    let range = ...5
    print(range)
}

