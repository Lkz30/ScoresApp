//
//  Repository.swift
//  ScoresApp
//
//  Created by Luis Cano  on 2024-12-25.
//

import Foundation

/// Un struc creado para poder manejar los datos desde el fichero **JSON**

struct Repository {
    
    /// Una variable en donde se almacena la URL del struc
    var url: URL {
        Bundle.main.url(forResource: "scoresdata", withExtension: "json")!
    }
    
    /// Funcion que permite leer y decodificar el fichero **JSON** y transformarlo en un tipo de dato capaz de ser leido y utilizado por el struct `Score`
    func loadJSON() -> Scores {
        do {
            let data = try Data(contentsOf: url)
            let scores = try JSONDecoder().decode(Scores.self, from: data)
            return scores
        } catch {
            print("Error decoding JSON: \(error)")
        }
        return []
    }
    
    func saveJSON(score : Scores){
        
    }
}

