//
//  PlayerScore.swift
//  QwirkleScore
//
//  Created by Y.C Lin on 2024/07/16.
//

import SwiftUI

struct PlayerScore: View {
    var player : Player
    
    var body: some View {
        HStack{
            Spacer()
                .frame(width: 30)
            Text("\(player.name)")
            Spacer()
                //.frame(width: 50)
            Text("\(player.score)")
        }
        .padding()
        
    }
}

struct PlayerScore_Previews: PreviewProvider {
    static var previews: some View {
        PlayerScore(player: Player(name : "YCL", isMyTurn: true))
    }
}
