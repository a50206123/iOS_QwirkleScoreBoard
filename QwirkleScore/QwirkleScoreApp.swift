//
//  QwirkleScoreApp.swift
//  QwirkleScore
//
//  Created by Y.C Lin on 2024/07/16.
//

import SwiftUI

@main
struct QwirkleScoreApp: App {
    var body: some Scene {
        WindowGroup {
            let players = Players(playerNames: [
                "YCL", "Sherry", "Miru"
            ])
            QwirkleScoreV(players: players.showPlayers())
        }
    }
}
