//
//  HangmanApp.swift
//  Hangman
//
//  Lisa T
//

import SwiftUI

@main
struct hangmanApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            MainView(viewRouter: viewRouter)
        }
    }
}

struct Category {
    static var category = ""
}

