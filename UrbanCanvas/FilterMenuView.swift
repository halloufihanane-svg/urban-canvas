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
    }
}

#Preview {
    ContentView()
}
