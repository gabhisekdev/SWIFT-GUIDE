//: Playground - noun: a place where people can play

import UIKit

func exampleOf(exampleName: String, completion: ()->()) {
    print("Example of \(exampleName)")
    print("-------------------------")
    completion()
    print("\n")
}


//Swift provides 3 primary collection types -> arrays, sets, and dictionaries

//MARK: Array
exampleOf(exampleName: "Creating an empty array") {
    let fruitList = [String]()
    print("Fruit List -\(fruitList)")
}

exampleOf(exampleName: "Creating Array with values") {
    let fruitList = ["Orange","Mango","Pineapple"]
    print("Fruit List -\(fruitList)")
}

exampleOf(exampleName: "Creating an array - Mutable one") {
    var fruitList = ["Orange","Mango","Pineapple"] //Just declare it as a variable and the rest addition and removing will follow soon
    print("Fruit List -\(fruitList)")
}

exampleOf(exampleName: "Creating an array - Mutable one") {
    var fruitList = ["Orange","Mango","Pineapple"] //Just declare it as a variable
    print("Fruit List -\(fruitList)")
}

exampleOf(exampleName: "Concatenating Arrays") {
    
    let fruitList = ["Orange","Mango","Pineapple"]
    print("Fruit List - \(fruitList)")
    let vegetableList = ["Cabbage","Cucumber","Jackfruit"]
    print("Vegetable List - \(fruitList)")
    
    let itemsList = fruitList + vegetableList
    print("All items bought - \(itemsList)")
    
}

exampleOf(exampleName: "Accessing and Modifying an Array") {
    
    let dataStructures = ["Stack","Queue","Linked List",""]
    
}
