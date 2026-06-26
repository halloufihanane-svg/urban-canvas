//
//  FilterMenuView.swift
//  UrbanCanvas
//
//  Created by Apprenant123 on 25/06/2026.
//

import SwiftUI

struct FilterMenuView: View {
    @Binding var selectedFilter: String //pour modifier le filtre sélectionné dans ContentView
    @Binding var isPresented: Bool //pour fermer ma feuille modal(sheet) dans ContentView
    let categories = ["Tous", "Invaders", "Mosaïques", "Mural", "Stencil", "Calligraphie"]
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Liste des filtres")
                    .font(.subheadline)
                    .foregroundStyle(.mainText)
                Text("Choisissez un type d'art")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            .frame(maxWidth: .infinity, alignment: .leading) // Pour décaler mes textes vers la gauche
            .padding(.horizontal, 25)
            .padding(.top, 24)
            .padding(.bottom, 20)
            
            VStack(spacing: 12) {
                ForEach(categories, id: \.self) { category in
                    Button {
                        selectedFilter = category
                        isPresented = false
                    } label: {
                        Text(category)
                            .font(.body)
                            .fontWeight(selectedFilter == category ? .bold : .medium)
                            .foregroundStyle(selectedFilter == category ? .orange : .black)
                            .padding(.vertical, 12)
                            .frame(maxWidth: .infinity)
                        //.background(.white.opacity(0.15))
                            .background(
                                selectedFilter == category ? .white : .black.opacity(0.06))
                            .cornerRadius(22)
                        
                    }
                }
                
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20) // padding tout autour de la carte du menu déroulant
        }
        .frame(width: 300)
        // Effet ultra transparent
        .background(.ultraThinMaterial)
        .cornerRadius(24)
        .shadow(radius: 10)
    }
        
}

#Preview {
    ContentView()
}
