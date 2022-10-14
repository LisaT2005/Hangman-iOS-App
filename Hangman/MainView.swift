//
//  MainView.swift
//  Hangman
//
//  Lisa T
//

import Foundation
import SwiftUI

enum Page {
    case home
    case categories
    case game
}

struct MainView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
        case .home:
            ContentView(viewRouter: viewRouter)
        case .categories:
            CategoriesView(viewRouter: viewRouter)
        case .game:
            GameView(viewRouter: viewRouter)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewRouter: ViewRouter())
    }
}
