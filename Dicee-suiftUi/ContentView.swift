//
//  ContentView.swift
//  Dicee-suiftUi
//
//  Created by user243065 on 9/7/23.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNumber = 1
  @State var rightdiceNumber = 1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightdiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightdiceNumber  = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .font(.system(size:50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                }
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct DiceView: View {
        let n : Int
        var body: some View {
            Image("dice\(n)")
                .resizable()
                .aspectRatio(1,contentMode: .fit)
                .padding()
        }
    }
}
