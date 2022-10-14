//
//  HangmanApp.swift
//  Hangman
//
//  Created by Jose Mathew on 10/14/22.
//

import SwiftUI

@main
struct gameApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            MainView(viewRouter: viewRouter)
        }
    }
}
