//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Apprenant123 on 22/06/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var filterStreetArt = "Tous"
    @State private var showFilterSheet = false
    
    
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
        ZStack {
            Color("BackgroundGray")
                .ignoresSafeArea()
            NavigationStack {
                VStack(alignment: .leading) {
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
                            
                            //menu filtre
                            //.sheet(isPresented: $showFilterSheet) {
                            //FilterMenuView(selectedFilter: $filterStreetArt, isPresented: $showFilterSheet)
                            //.presentationDetents([.medium, .fraction(0.5)]) //pour limiter la taille de la feuille et éviter qu'elle prenne toute la place
                            //}
                            
                        }
                    }
                    .listStyle(.insetGrouped)
                    .scrollContentBackground(.hidden)
                    //.background(Color("BackgroundGray"))
                    .background(Color.clear)
                    
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing) {
                            Button {
                                showFilterSheet.toggle() // alterne entre true et false
                            } label: {
                                Image(systemName: "line.3.horizontal.decrease.circle")
                            }
                        }
                    }
                }
            }
                    if showFilterSheet {
                                    
                        // Le fond noir translucide pour assombrir la liste
                        Color.black.opacity(0.3)
                            .ignoresSafeArea()
                            .onTapGesture {
                                // Ferme le menu si on clique en dehors de la carte
                                        showFilterSheet = false
                                    }
                                    
                                // Ta carte personnalisée (Screen 5) bien centrée
                                FilterMenuView(selectedFilter: $filterStreetArt, isPresented: $showFilterSheet)
                                    .transition(.scale.combined(with: .opacity)) // Animation zoom + fondu
                                }
                            }
                            // Applique l'animation fluide dès que la var showFilterSheet change
                            .animation(.easeInOut, value: showFilterSheet)
                        }
                    }
            
        
    


//}
#Preview {
    ContentView()
}
