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
        VStack(alignment: .center, spacing: 0) {
            Text("Liste des filtres")
                .font(.subheadline)
                .foregroundStyle(.mainText)
            Text("Liste des filtres")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        // padding d'après les marges sur Figma
        .padding(.horizontal, 8)
        .padding(.top, 8)
        .padding(.bottom, 24)
        
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
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(.white.opacity(0.65))
                        .cornerRadius(22)
                    
                }
            }
            
        }
        .padding(14) // padding tout autour de la carte du menu déroulant
        .frame(width: 358)
        // Effet ultra transparent
        .background(.ultraThinMaterial)
        .cornerRadius(24)
        .shadow(radius: 10)
    }
        
}

#Preview {
    ContentView()
}
