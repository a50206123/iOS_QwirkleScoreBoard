import SwiftUI

struct QwirkleScoreV: View {
    
    @State var players : [Player]
    @State var turn : [Bool] = [true, false, false]
    
    var body: some View {
        NavigationView{
            VStack{
                List(players) { player in
                    PlayerScore(player: player)
                }
                NumberPad()
            }
            .navigationTitle("Qwirkle Score")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //let players = Players(playerNames: [
        //    "YCL", "Sherry", "Miru"
        //])
        let players = Players(playerNames: ["YCL", "Sherry"], Turns: [true, false])
        QwirkleScoreV(players: players.showPlayers())
    }
}
