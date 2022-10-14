//
//  ViewRouter.swift
//  Hangman
//
//  Lisa T
//

import Foundation
import SwiftUI

class ViewRouter : ObservableObject{
    @Published var currentPage: Page = .game
}
