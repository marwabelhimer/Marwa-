//
//  HomeView.swift
//  marwa-
//
//  Created by Marwa Belhimer on 18/12/24.
//

//
//  HomeView.swift
//  WingSpan
//
//  Created by Marwa Belhimer on 18/12/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HStack {
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 24))
                        .padding(.leading)

                    Spacer()

                    Text("Home")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.black)

                    Spacer()

                    NavigationLink(destination: SearchView()) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 24))
                            .padding(.trailing)
                    }
                }
                .padding(.top, 4)
                .padding(.bottom, 20)
                .background(Color.white)

                Spacer()

                // Grid of squares
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(ideaGroups, id: \.self) { group in
                            HStack(spacing: 20) {
                                ForEach(group, id: \.title) { item in
                                    squareButton(color: item.color, label: item.title, ideas: item.ideas, imageName: item.imageName)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 40)
                }
            }
            .background(Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all))
        }
    }

    // Button view for each square
    func squareButton(color: Color, label: String, ideas: [String], imageName: String) -> some View {
        NavigationLink(destination: DetailView(label: label, ideas: ideas)) {
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80) // Dimensione dell'immagine
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
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
