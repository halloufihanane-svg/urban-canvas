//
//  StreetArtStructure.swift
//  UrbanCanvas
//
//  Created by Apprenant123 on 22/06/2026.
//

import SwiftUI

struct StreetArtStructure: Identifiable, Hashable {
    let id = UUID()
    
    let title: String
    let artiste: String
    let condition: String
    let date: String
    let location: String
    let imageName: String
}

let streetArtsData: [StreetArtStructure] = [ // Tableau contenant la liste de tous les Street Arts (données en dur)
    
    StreetArtStructure(
        title: "La Joconde de Marseille",
        artiste: "KAN DMV",
        condition: "Bonne",
        date: "Mars 2022",
        location: "Palais de la Bourse, 13001 Marseille",
        imageName: "LaJocondeDeMarseille"
    ),// Pour les 7 oeuvres suivantes les données (condition et date) non spécifiées dans le cahier des charges et donc fictives pour le bien du projet
    StreetArtStructure(
        title: "Liberté Égalité Fraternité",
        artiste: "Shepard Fairey",
        condition: "Excellente",
        date: "Juin 2019",
        location: "Paris",
        imageName: "LiberteEgalite_fraternite"
    ),
    StreetArtStructure(
        title: "La maison de Cécile",
        artiste: "Kitsune Jolene",
        condition: "Bonne",
        date: "2021",
        location: "Paris",
        imageName: "LaMaisonDeCecille"
    ),
    StreetArtStructure(
        title: "Chloé",
        artiste: "JDL",
        condition: "Très Bonne",
        date: "Octobre 2020",
        location: "Marseille",
        imageName: "Chloe"
    ),
    StreetArtStructure(
        title: "PA_278",
        artiste: "Invader",
        condition: "Excellente",
        date: "2018",
        location: "Paris",
        imageName: "PA_278"
    ),
    StreetArtStructure(
        title: "Chuuuut...",
        artiste: "Jef Aérosol",
        condition: "Bonne",
        date: "Mai 2012",
        location: "Paris",
        imageName: "Chuuuut"
    ),
    StreetArtStructure(
        title: "Le Tigre et la Cigale",
        artiste: "Seth Globepainter",
        condition: "Excellente",
        date: "Novembre 2023",
        location: "Marseille",
        imageName: "LeTigreEtLaCigale"
    )
]
