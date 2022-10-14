//
//  CategoriesView.swift
//  Hangman
//
//  Lisa T
//

import Foundation
import SwiftUI

struct CategoriesView: View {
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        
        let gameFont = Font.custom("WhiskeyBite-Regular", size:50.0)
        let gameFontLarge = Font.custom("WhiskeyBite-Regular", size: 60.0)
        
        ZStack{
            Color.white
                .ignoresSafeArea()
            
            VStack{
            HStack(){
                Button()
                {
                    viewRouter.currentPage = .home
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
            } //end of navbar vstack
            
            VStack(alignment: .center) {
                
                Spacer()
                
                Text("SELECT A CATEGORY:")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(gameFontLarge)
                    .foregroundColor(Color.black)
                    .scaledToFit()
                
                Button()
                {
                    Category.category = "animals"
                    viewRouter.currentPage = .game
                } label: {
                    Text("animals")
                        .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                        .font(gameFont)
                        .scaledToFill()
                        
                        .frame(width:UIScreen.main.bounds.size.width * 0.75)
                    
                }
                
                .background(Color("AccentColor"))
                .foregroundColor(Color.black)
                
                
                Button()
                {
                    Category.category = "food"
                    viewRouter.currentPage = .game
                } label: {
                    Text("food")
                        .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                        .font(gameFont)
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.size.width * 0.75)
                    
                    
                }
                
                .background(Color("AccentColor"))
                .foregroundColor(Color.black)
                
                
                Button()
                {
                    Category.category = "countries"
                    viewRouter.currentPage = .game
                } label: {
                    Text("countries")
                        .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                        .font(gameFont)
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.size.width * 0.75)
                }
                
                .background(Color("AccentColor"))
                .foregroundColor(Color.black)
                
                
                Button()
                {
                    Category.category = "clothing"
                    viewRouter.currentPage = .game
                } label: {
                    Text("clothing")
                        .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                        .font(gameFont)
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.size.width * 0.75)
                    
                }
                
                .background(Color("AccentColor"))
                .foregroundColor(Color.black)
                
                Spacer()
            }
            .fixedSize()
            
        }
    }
}

struct SelectMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView(viewRouter: ViewRouter())
    }
}
