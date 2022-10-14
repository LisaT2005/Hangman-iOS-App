//
//  ViewRouter.swift
//  Hangman
//
//  Created by Jose Mathew on 10/14/22.
//

import Foundation
import SwiftUI

class ViewRouter : ObservableObject{
    @Published var currentPage: Page = .game
}
