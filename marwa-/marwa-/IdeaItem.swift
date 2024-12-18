//
//  IdeaItem.swift
//  WingSpan
//
//  Created by Marwa Belhimer on 15/12/24.
//

import SwiftUI

// MARK: - Model for storing ideas and colors
/// Un modello per rappresentare un'idea con un titolo, colore, elenco di idee e nome immagine.
struct IdeaItem: Hashable {
    let title: String          // Titolo del pulsante/idea
    let color: Color           // Colore di sfondo del pulsante
    let ideas: [String]        // Elenco di idee associate
    let imageName: String      // Nome dell'immagine associata
}

//// MARK: - Example Idea Data
/// Un array predefinito di gruppi di `IdeaItem` per esempio o sviluppo.
let ideaGroups: [[IdeaItem]] = [
    [
        IdeaItem(
            title: "FOOD",
            color: Color(red: 255 / 255, green: 208 / 255, blue: 88 / 255) , // #FDBD84
            ideas: ["Spaghetti", "Tomato Bruschetta", "Mac and Cheese" , "Tacos" , "Pizza - Classic margherita, pepperoni, or go gourmet with arugula and truffle oil" , "Burgers - Try beef, chicken, or plant-based patties." , "Pasta - Carbonara, Alfredo, or pesto for a quick and comforting meal." , "Wraps - Fill with grilled chicken, falafel, or veggies." , " Soup - Tomato basil, chicken noodle, or creamy potato." , "Indian butter chicken with rice.", "Lasagna - Vegetarian, meat, or white sauce lasagna." , "Salad Bowls - Caesar, Greek, or quinoa-based." , "Grilled Fish or Chicken - Pair with roasted veggies or salad." , "Smoothie Bowls - Add fresh fruits, granola, and nuts." , "Stir-fry - Lots of veggies with tofu, chicken, or shrimp."],
            imageName: "food"
        ),
        IdeaItem(
            title: "FITNESS",
            color: Color(red: 152 / 255, green: 220 / 255, blue: 212 / 255), // #C6EDC3
            ideas: ["Go for a run", "Yoga session", "Drink water"],
            imageName: "fitness"
        ),
    ],
    [
        IdeaItem(
            title: "TRAVEL",
            color: Color(red: 164 / 255, green: 199 / 255, blue: 255 / 255), // #9BB8ED
            ideas: ["Plan weekend trip", "Book flights", "Check hotels"],
            imageName: "travel"
        ),
        IdeaItem(
            title: "COUPLE",
            color: Color(red: 162 / 255, green: 24 / 255, blue: 54 / 255), // #D77680
            ideas: ["Dinner date", "Watch a movie together", "Weekend getaway"],
            imageName: "couple"
        ),
    ],
    [
        IdeaItem(
                  title: "MOVIES",
                  color: Color(red: 15 / 255, green: 44 / 255, blue: 152 / 255)  // #0F2C98
                  , // #A39FE1
                  ideas: ["Watch a thriller", "Comedy night", "Documentaries"],
                  imageName: "movies"
        ),
        IdeaItem(
            title: "BOOKS",
            color: Color(red: 241 / 255, green: 235 / 255, blue: 228 / 255), // #D5BA98
            ideas: ["Read a novel", "Learn a new skill", "Start a journal"],
            imageName: "books"
        ),
    ],
]
// MARK: - Color Extension
/// Estensione del tipo `Color` per aggiungere colori personalizzati.
extension Color {
    // Nuovi colori personalizzati per i quadratini
    static let booksColor = Color(red: 241 / 255, green: 235 / 255, blue: 228 / 255) // #F1EBE4
    static let foodColor = Color(red: 255 / 255, green: 208 / 255, blue: 88 / 255)   // #FFD058
    static let coupleColor = Color(red: 162 / 255, green: 24 / 255, blue: 54 / 255)  // #A21836
    static let fitnessColor = Color(red: 152 / 255, green: 220 / 255, blue: 212 / 255) // #98DCD4
    static let travelColor = Color(red: 164 / 255, green: 199 / 255, blue: 255 / 255) // #A4C7FF
    static let moviesColor = Color(red: 15 / 255, green: 44 / 255, blue: 152 / 255)  // #0B1957


    }
