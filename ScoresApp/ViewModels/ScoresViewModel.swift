//
//  ScoresViewModel.swift
//  ScoresApp
//
//  Created by Luis Cano  on 2024-12-25.
//

import SwiftUI

final class ScoresViewModel: ObservableObject {
    let repository: Repository
    
    @Published var scores: Scores {
        didSet {
            repository.saveJSON(score: scores) }
    }
    
    init(repository: Repository) {
        self.repository = repository
        self.scores = repository.loadJSON()
    }
}
