//
//  Untitled.swift
//  marwa-
//
//  Created by Marwa Belhimer on 18/12/24.
//

import SwiftUI

struct DetailView: View {
    let label: String
    let ideas: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\(label) Ideas")
                .font(.title)
                .padding()

            List(ideas, id: \.self) { idea in
                Text("• \(idea)")
            }
            .listStyle(PlainListStyle())

            Spacer()
        }
        .navigationTitle(label)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(label: "Example", ideas: ["Idea 1", "Idea 2", "Idea 3"])
    }
}
