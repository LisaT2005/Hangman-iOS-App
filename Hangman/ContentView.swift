//
//  ContentView.swift
//  Hangman
//
//  Lisa T
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    
    var body: some View{
        
        
        let gameFont = Font.custom("WhiskeyBite-Regular", size:50.0)
        let gameFontLarge = Font.custom("WhiskeyBite-Regular", size: 60.0)
        
        ZStack{
            Color.white
                .ignoresSafeArea()
            
            
            
            VStack(alignment: .center) {
                
                
                Text("THE HANGMAN GAME")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(gameFontLarge)
                    .foregroundColor(Color.black)
                    .scaledToFill()
                
                
                  
                
                Image("mascot")
                    .padding(.vertical, 9.0)
                
                
                 
                Button()
                    {
                        viewRouter.currentPage = .categories
                    } label: {
                        Text("play")
                            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                            .font(gameFont)
                            .scaledToFill()
                            .frame(width:UIScreen.main.bounds.size.width * 0.75)
                            
                    }
                    
                    .background(Color("AccentColor"))
                    .foregroundColor(Color.black)
                  
                
                
                Button()
                    {
                        print("options")
                    } label: {
                        Text("options")
                        
                            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                            .font(gameFont)
                            .scaledToFill()
                            .frame(width:UIScreen.main.bounds.size.width * 0.75)
                    }
                    
                    .background(Color ("AccentColor"))
                    .foregroundColor(Color.black)
                
                Button()
                    {
                    print("tutorial")
                    } label: {
                        Text("tutorial")
                        
                            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                            .font(gameFont)
                            .scaledToFill()
                            .frame(width:UIScreen.main.bounds.size.width * 0.75)
                    }
                    
                    .background(Color ("AccentColor"))
                    .foregroundColor(Color.black)
                
                
            } //end of VStack
            .fixedSize()
            
            
        } //end of ZStack
        
        
    }
        
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
        
        
    }
}
