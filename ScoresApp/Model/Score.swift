//
//  Score.swift
//  ScoresApp
//
//  Created by Luis Cano  on 2024-12-25.
//

import Foundation

/// Este struct es la primera parte del modelo que usare para importar y leer los datos a partir de un fichero **JSON**, el cual pertenece al protocolo **CODABLE**

struct Score: Codable {
    let id: Int
    let title: String
    let composer:String
    let year: Int
    let length: Double
    let cover : String
    let tracks: [String]
}

typealias Scores = [Score]
