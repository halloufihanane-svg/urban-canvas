//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Apprenant123 on 22/06/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var filterStreetArt = "Tous"
    var filteredStreetArts: [StreetArtStructure] {
        if filterStreetArt == "Tous" {
            return streetArtsData
        } else if filterStreetArt == "Invaders" {
            return streetArtsData.filter { $0.artiste == "Invader"}
        } else if filterStreetArt == "Mosaïques" {
            return streetArtsData.filter { $0.type == "Mosaïque"}
        } else if filterStreetArt == "Mural" {
            return streetArtsData.filter { $0.type == "Fresque" || $0.type == "Harlftone"}
        } else {
            return streetArtsData.filter {$0.type == filterStreetArt}
        }
    }
    var body: some View {
        //ZStack {
            //Color("BackgroundGray")
                //.ignoresSafeArea()
            NavigationStack {
                
                VStack {
                    
                    // Large Title/Emphasized
                    Text("Liste des Street arts")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top)
                        .padding(.horizontal, 20) // Marge appliqué sur Figma dans le dev Mode
                    
                    List(filteredStreetArts, id: \.self) { streetArt  in // id: \.self car notre structure est Hashable. De plus on remplace streetArtsData de la V1 par filteredStreetArts pour notre filtre dans la V2
                        
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
                    
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) { // topBartrailing pour que notre bouton soit en haut à droite
                            Menu {
                                Button("Tous") {
                                    filterStreetArt = "Tous"
                                }
                                Button("Invaders") {
                                    filterStreetArt = "Invaders"
                                }
                                Button("Mosaïques") {
                                    filterStreetArt = "Mosaïques"
                                }
                                Button("Mural") {
                                    filterStreetArt = "Mural"
                                }
                                Button("Stencil") {
                                    filterStreetArt = "Stencil"
                                }
                                Button("Calligraphie") {
                                    filterStreetArt = "Calligraphie"
                                }
                            } label: {
                                Image(systemName: "line.3.horizontal.decrease.circle")
                            }
                        }
                    }
                    .listStyle(.insetGrouped)
                    .scrollContentBackground(.hidden)
                }
                //Color("BackgroundGray")
                    //.ignoresSafeArea()
                .background(Color("BackgroundGray"))
            }
        }
    }
//}
#Preview {
    ContentView()
}
