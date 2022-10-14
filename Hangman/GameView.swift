//
//  GameView.swift
//  Hangman
//
//  Lisa T
//

import Foundation
import SwiftUI

struct GameView: View {
    
    @StateObject var viewRouter: ViewRouter
    @State var guess = ""
    
    var body: some View {
        
        let word = "______"
       
        
        let gameFont = Font.custom("WhiskeyBite-Regular", size:50.0)
        let gameFontLarge = Font.custom("WhiskeyBite-Regular", size: 60.0)
        
        ZStack{
            Color.white
                .ignoresSafeArea()
            
            VStack{
            HStack(){
                Button()
                {
                    viewRouter.currentPage = .categories
                    
                } label: {
                    Text("back")
                        .padding()
                        .font(Font.custom("WhiskeyBite-Regular", size:40.0))
                    
                }
                
                .background(Color("AccentColor"))
                .foregroundColor(Color.black)
                .ignoresSafeArea()
                .padding()
                
                
                Spacer()
            }
            
            Spacer()
            }
            
            VStack(alignment: .center) {
                
                Image("mascot")
                    .padding(.vertical, 9.0)
                
                Text(word)
                    .font(gameFont)
                
                TextField(
                    "Enter word here",
                    text: $guess
                )
                .font(gameFont)
                .textFieldStyle(.roundedBorder)
                
                Text("category: " + Category.category)
                    .font(gameFont)
                
                Text("guess: " + guess)
                    .font(gameFont)
                
                Spacer()
                
                
            }
            .fixedSize() //end of vstack
            
        } //end of zstack
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(viewRouter: ViewRouter())
    }
}
