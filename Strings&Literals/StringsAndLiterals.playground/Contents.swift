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



exampleOf(exampleName: "Example of SWIFT String supported special characters") {
  let unicodeExample = "\u{26F3}" //\u{} deciphers unicode character from their code.
  print("Let's play Golf. Hell Yeah!!!\(unicodeExample)")
  
  let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""
 print(threeDoubleQuotationMarks)
  
}













