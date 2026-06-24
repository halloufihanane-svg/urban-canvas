//
//  StreetArtDetailView.swift
//  UrbanCanvas
//
//  Created by Apprenant123 on 23/06/2026.
//

import SwiftUI

struct StreetArtDetailView: View {
    
    let streetArt: StreetArtStructure
    
    var body: some View {
        ZStack {
            Color(.backgroundGray)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    
                    Image(streetArt.imageName)
                        .resizable()
                        .scaledToFill() // Pour que l'image remplisse le cadre sans que cela se déforme
                        .frame(height: 278)
                        .clipped()
                    
                    VStack(alignment: .leading, spacing: 16) {
                        
                        Text(streetArt.title)
                            .font(.title)
                            .bold()
                            .foregroundStyle(.mainOrange)
                        
                        Text(streetArt.description)
                            .font(.body)
                            .foregroundStyle(.black)
                    }
                    .padding(.horizontal, 26) // d'après Figma, marge de 26 pts entre le titre et le bord de l'écran
                    .padding(.top, 24)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        //Text("Type : ").bold() + Text(streetArt.type) : deprecated
                        Text("**Type :** \(streetArt.type)") // utilisation de markdown pour mettre en gras un texte
                            .font(.body)
                        Text("**Condition :** \(streetArt.condition)")
                        Text("**Date :** \(streetArt.date)")
                        Text("**Auteur :** \(streetArt.artiste)")
                        Text("**Localisation :** \(streetArt.location)")
                    }
                    .padding(.horizontal, 26)
                    .padding(.top, 24)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Image(streetArt.imageMap)
                            .resizable()
                            .scaledToFill() // Pour que l'image remplisse le cadre sans que cela se déforme
                            .frame(height: 157)
                            .clipped()
                        
                    }
                    .padding(.horizontal, 21)
                    .padding(.top, 23)
                }
                .ignoresSafeArea(edges: .top)
                
            }
        }
    }
}
#Preview {
    StreetArtDetailView(streetArt: streetArtsData[2])
}
