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
  let fruit = "Orange"
  
}



