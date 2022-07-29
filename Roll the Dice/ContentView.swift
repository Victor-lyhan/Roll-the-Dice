//
//  ContentView.swift
//  Roll the Dice
//
//  Created by Victor Han on 2022/7/29.
//

import SwiftUI

struct ContentView: View {
    @State var randomValue = 0
    @State var rotation = 0.0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.title)
                .padding()
            Image("pips \(randomValue)")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .rotationEffect(.degrees(rotation))
                .rotation3DEffect(.degrees(rotation), axis:(x: 1, y: 1, z: 0))
                .font(.system(size: 72))
                .padding()
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
                    withAnimation(.default) {
                        rotation += 360
                    }
                }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
