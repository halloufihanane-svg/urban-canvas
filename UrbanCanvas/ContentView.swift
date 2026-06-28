//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Apprenant123 on 22/06/2026.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var filterStreetArt = "Tous"
    @State private var showFilterSheet = false
    @State private var displayMode = "Liste"
    @State private var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion(center: (CLLocationCoordinate2D(latitude: 46.6, longitude: 2.5)), span: MKCoordinateSpan(latitudeDelta: 8, longitudeDelta: 8))) //center : coordonnées géographiques du centre de la France
    @State private var selectedStreetArt: StreetArtStructure?
    
    
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
        NavigationStack {
            ZStack {
                Color("BackgroundGray")
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    Text("Liste des Street arts")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top)
                        .padding(.horizontal, 20) // Marge appliqué sur Figma dans le dev Mode
                    HStack {
                        Button("Liste") {
                            displayMode = "Liste"
                        }
                        Button("Carte") {
                            displayMode = "Carte"
                        }
                    }
                    .padding(.horizontal, 20)
                    
                    if displayMode == "Liste" {
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
                        .listStyle(.plain)
                        .scrollContentBackground(.hidden)
                        //.background(Color.backgroundGray)
                        .padding(.horizontal, 20)
                    } else {
                        Map(position: $cameraPosition, selection: $selectedStreetArt) {
                            ForEach(filteredStreetArts, id: \.self) { streetArt in
                                Marker(streetArt.title, coordinate: CLLocationCoordinate2D(latitude: streetArt.latitude, longitude: streetArt.longitude))
                                    .tint(.mainOrange)
                                    .tag(streetArt)
                            }
                        }
                        if let selected = selectedStreetArt {
                            Text("Tu as cliqué : \(selected.title)")
                        }
                    }
                    
                } //fin VStack
                if showFilterSheet {
                    ZStack(alignment: .topTrailing) {
                        // Le fond noir translucide pour assombrir la liste
                        Color.black.opacity(0.3)
                            .ignoresSafeArea()
                            .onTapGesture {
                                // Ferme le menu si on clique en dehors de la carte
                                showFilterSheet = false
                            }
                        
                        FilterMenuView(selectedFilter: $filterStreetArt, isPresented: $showFilterSheet)
                            
                            .padding(.top, 2)
                            .padding(.trailing, 16)
                            .transition(.scale.combined(with: .opacity)) // Animation zoom + fondu
                    }
                }
            }// ZStack
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showFilterSheet.toggle() // alterne entre true et false
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                }
            }
            
            // Applique l'animation fluide dès que la var showFilterSheet change
            .animation(.easeInOut, value: showFilterSheet)
        }
    }
}
#Preview {
    ContentView()
}
