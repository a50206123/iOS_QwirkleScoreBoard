import Foundation

struct Player : Identifiable {
    let id = UUID()
    var name : String
    var score : Int = 0 // Initialized
    var isMyTurn : Bool
    
    mutating func addScore(add addScore : Int) {
        score += addScore
    }
    
    mutating func isMyTurnNow() {
        isMyTurn = true
    }
    
    mutating func isNotMyTurnNow () {
        isMyTurn = false
    }
}

class Players {
    var playerNames : [String]
    var players : [Player]
    
    init(playerNames: [String]) {
        self.playerNames = playerNames
        var players : [Player] = []
        
        for playerName in playerNames {
            players.append(Player(name: playerName, isMyTurn: false))
        }
        
        self.players = players
    }
    
    init(playerNames: [String], Turns : [Bool]) {
        self.playerNames = playerNames
        var players : [Player] = []

        for i in 0..<playerNames.count {
            let playerName = playerNames[i]
            let turn = Turns[i]
            players.append(Player(name: playerName, isMyTurn: turn))
        }
        
        self.players = players
    }
    
    func showPlayers() -> [Player] {
        return self.players
    }
}
