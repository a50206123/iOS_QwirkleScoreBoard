//
//  NumberPad.swift
//  QwirkleScore
//
//  Created by Y.C Lin on 2024/07/16.
//

import SwiftUI

struct NumberPadArrange : View {
    let numbers : [[Int]] = [[7, 8, 9], [4, 5, 6], [1, 2, 3]]
    
    var body: some View {
        List(0..<3){ i in
            VStack{
                List(0..<3) { j in
                    HStack{
                        Button("\(numbers[i][j])") {
                            ButtonClicked()
                        }
                    }
                    Spacer()
                }
            }
        }
    }
    
    func ButtonClicked() {
        print("HIT ME")
    }
}

struct NumberPad: View {
    var body: some View {
        NumberPadArrange()
    }
}

struct NumberPad_Previews: PreviewProvider {
    static var previews: some View {
        NumberPad()
    }
}
