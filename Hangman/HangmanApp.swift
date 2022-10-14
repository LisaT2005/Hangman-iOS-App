//
//  HangmanApp.swift
//  Hangman
//
//  Lisa T
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
