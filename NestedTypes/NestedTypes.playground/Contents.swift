//: Playground - noun: a place where people can play

import UIKit


func exampleOf(exampleName: String, completion: ()->()) {
    print("Example of \(exampleName)")
    print("-------------------------")
    completion()
    print("\n")
}

exampleOf(exampleName: "Nested Types") {
}

struct Cricket { // Create a base struct named as Cricket
    
    init() {
    }
    
    //We create an nested enum of player categories
    enum PlayerCategory: String {
        case batsman
        case bowler
        case allrounder
        case wicketkeeper
    }
    
    //Create a player struct and it is nested in Cricket struct
    struct Player {
        var name: String!
        var category: PlayerCategory
        var runs: Int!
        var wickets: Int!
        var catches: Int!
        
        init(name: String, category: PlayerCategory, runs: Int, wickets: Int, catches: Int) {
            
            self.name = name
            self.category = category
            self.runs = runs
            self.wickets = wickets
            self.catches = catches
            
        }
    }
    
    //Declare a function to fetch all batsmen in the team
    func fetchAllBatsmen(players: [Player]) -> [Player] {
        
        var batsmen = [Player]()
        for player in players {
            switch player.category {
            case .batsman:
                batsmen.append(player)
            case .bowler:
                fallthrough
            case .wicketkeeper:
                fallthrough
            case .allrounder:
                fallthrough
            default:
                print("")
            }
        }
        return batsmen
    }
    
}
//Create players and add in the team
//N.B We are referencing to nested types by using the "." operator. Eg. Cricket.Player
let player1 = Cricket.Player(name: "Sachin", category: .batsman, runs: 15000, wickets: 250, catches: 200)
let player2 = Cricket.Player(name: "Dravid", category: .wicketkeeper, runs: 10000, wickets: 0, catches: 400)
let player3 = Cricket.Player(name: "Lara", category: .batsman, runs: 11000, wickets: 0, catches: 150)
let player4 = Cricket.Player(name: "Zaheer", category: .bowler, runs: 2000, wickets: 400, catches: 150)

var team = [player1, player2, player3, player4]
let cricket = Cricket()

print("Batsmen in my team are:")
for player in cricket.fetchAllBatsmen(players: team) {
    print(player.name)
}
