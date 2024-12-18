//
//  FavoritesView.swift
//  marwa-
//
//  Created by Marwa Belhimer on 18/12/24.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Nessun elemento nei preferiti.")
                    .font(.headline)
                    .padding()

                Spacer()
            }
            .navigationTitle("Preferiti")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}

