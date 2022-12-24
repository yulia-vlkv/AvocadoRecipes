//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Iuliia Volkova on 18.08.2022.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK: - Properties
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Card Image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(.white)
                            .imageScale(.small)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                        .padding(.trailing, 28)
                        .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            
            VStack(alignment: .leading, spacing: 12){
                // Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // Rating
                RecipeRatingView(recipe: recipe)
                
                // Cooking
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal) {
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
