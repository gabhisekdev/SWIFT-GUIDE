//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func exampleOf(exampleName: String, completion: ()->()) {
    print("Example of \(exampleName)")
    print("-------------------------")
    completion()
    print("\n")
}


//Multiline String Literals
exampleOf(exampleName: "Swift String") {
    let myName = "Johnny"
    print(myName)
}

//Multiline String Literals
exampleOf(exampleName: "Multiline String Literals") {
    let myMultilineString = """
I am going to learn SWIFT and become a rockstar iOS.
  
Really. Superb
"""
    print(myMultilineString)
}

exampleOf(exampleName: "Multiline String Literals with Line Break") {
    let myMultilineString = """
I am going to learn SWIFT and become a rockstar iOS.\

Really. Superb
"""
    print(myMultilineString)
}

exampleOf(exampleName: "Multi Line with Indentation") {
    let lineBreaks = """
There was a rabit and tortoise.
   Both started a race one day.
      And ..... I don't know :]
"""
    print(lineBreaks)
}


//Unicode decipher example
exampleOf(exampleName: "Example of SWIFT String supported special characters") {
    let unicodeExample = "\u{26F3}" //\u{} deciphers unicode character from their code.
    print("Let's play Golf. Hell Yeah!!!\(unicodeExample)")
}

//Iterating over sring
exampleOf(exampleName: "Iterating over sring") {
    let myName = "Abhisek"
    for individualCharacter in myName {
        print(individualCharacter)
    }
}

//String Mutability
exampleOf(exampleName: "String Mutability") {
    
    var myFirstSentence = "I am going to Paradeep port. " //Mutable string shall be var, don't make it let, or else APPLE will ask you to modfiy.
    print("Initial sentence -> \(myFirstSentence)")
    myFirstSentence += "I will then go to the beach." // Or we can write - myFirstSentence = myFirstSentence + "Your_Sentence"
    print("Final sentence after changing -> \(myFirstSentence)")
    
}

//Concatenate
exampleOf(exampleName: "Concatenate") {
    
    let firstString = "My name is"
    let secondString = "Abhisek"
    let resultantString = firstString + secondString
    print(resultantString)
    
}

//String Interpolation
exampleOf(exampleName: "String Interpolation") {
    let productName = "iPhone 5"
    let productPrice = "$50"
    print("The product to be sold is \(productName) having a price of \(productPrice)")
}

//String Interpolation
exampleOf(exampleName: "Counting string characters") {
    let productName = "iPhone 5"
    print("The number of characters in \(productName) is \(productName.count)")
}

//String indices
exampleOf(exampleName: "String Indices") {
    
    let myFavouriteFruit = "Orange"
    print(myFavouriteFruit[myFavouriteFruit.startIndex])
    //Other index property -> endIndex,
}

//Inserting and Removing
exampleOf(exampleName: "Inserting and Removing") {
    
    //Inserting characters at certain indexes
    var salutation = "Hi Abhisek"
    salutation.insert("!", at: salutation.endIndex)
    print(salutation)
    
    //Inserting strings or collection types at certain indexes
    salutation.insert(contentsOf: " How are you doing?", at: salutation.endIndex)
    print(salutation)
    
    //Remove at particular index
    salutation.remove(at: salutation.index(before: salutation.endIndex))
    print(salutation)
    
    //Remove a range of characters within a string
    let range = salutation.startIndex..<salutation.index(salutation.startIndex, offsetBy: 2)
    salutation.removeSubrange(range)
    print(salutation)
    
}

//Substring
exampleOf(exampleName: "Substring") {
    
    //Now here comes substring -> An intresting concept that you would love to read.
    //Operating on substrings is fast and efficient because a substring shares its storage with the original string.
    //Please read more at - https://developer.apple.com/documentation/swift/substring
    let salutation = "Hi Abhisek! How are you?"
    let substring = salutation.prefix(11)
    print(substring)
    
}

exampleOf(exampleName: "String and Character Equality") {
    
    let string1 = "Orange"
    let string2 = "Mango"
    if string1 == string2 {
        print("String1 is equal to string2")
    }
    
    let string3 = "Mango"
    let string4 = "Mango"
    if string3 == string4 {
        print("string3 is equal to string4")
    }
    
}




