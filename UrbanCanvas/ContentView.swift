//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Apprenant123 on 22/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BackgroundGray")
                .ignoresSafeArea()
            NavigationStack {
                VStack {
                    
                    // Large Title/Emphasized
                    Text("Liste des Street arts")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top)
                        .padding(.horizontal, 20) // Marge appliqué sur Figma dans le dev Mode
                    
                    List(streetArtsData, id: \.self) { streetArt  in // id: \.self car notre structure est Hashable
                        
                        NavigationLink(destination: StreetArtDetailView(streetArt: streetArt)) {
                            
                            HStack (spacing: 11) { // marge de 11 sur Figma entre l'image Circle et le text (le titre de la StreetArt)
                                Image(streetArt.imageName)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipped()
                                    .cornerRadius(60)
                                
                                VStack (alignment: .leading, spacing: 8) { // forcer l'alignement à droite et espace de 8 sur Figma
                                    Text(streetArt.title)
                                        .font(.headline)
                                    
                                    
                                    HStack (spacing: 4) {
                                        Image(systemName: "mappin.circle.fill")
                                            .resizable()
                                            .frame(width: 12, height: 12)
                                            .foregroundStyle(.gray)
                                        Text(streetArt.city)
                                            .font(.headline)
                                            .foregroundStyle(.gray)
                                    }
                                    
                                    
                                }
                                
                            }
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
