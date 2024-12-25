//
//  ContentView.swift
//  ScoresApp
//
//  Created by Luis Cano  on 2024-12-25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var scoresVM = ScoresViewModel(repository: <#Repository#>)
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hola , world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
