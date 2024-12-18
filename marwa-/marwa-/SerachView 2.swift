//
//  Untitled.swift
//  marwa-
//
//  Created by Marwa Belhimer on 18/12/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""

    var body: some View {
        VStack {
            // Campo di testo per la ricerca
            TextField("Search...", text: $searchText)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal)

            // Risultati della ricerca
            ScrollView {
                let filteredResults = searchResults()

                if filteredResults.isEmpty {
                    Text("No results found")
                        .foregroundColor(.gray)
                        .padding(.top, 20)
                } else {
                    VStack(spacing: 20) {
                        ForEach(filteredResults, id: \.self) { item in
                            squareButton(color: item.color, label: item.title, ideas: item.ideas, imageName: item.imageName)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .navigationTitle("Search")
    }

    // Funzione per filtrare i risultati
    private func searchResults() -> [IdeaItem] {
        // Flatten `ideaGroups` per trasformarlo in una singola lista
        let allItems = ideaGroups.flatMap { $0 }
        // Filtra in base al testo di ricerca
        return allItems.filter { item in
            item.title.localizedCaseInsensitiveContains(searchText) ||
            item.ideas.contains(where: { $0.localizedCaseInsensitiveContains(searchText) })
        }
    }

    // Button view per ogni quadrato
    func squareButton(color: Color, label: String, ideas: [String], imageName: String) -> some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .padding(.bottom, 8)

            Text(label)
                .font(.headline)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(width: 150, height: 150)
        .background(color)
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
