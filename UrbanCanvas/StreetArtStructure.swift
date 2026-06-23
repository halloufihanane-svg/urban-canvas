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
    let description: String
    let type: String
    let imageMap: String
}

let streetArtsData: [StreetArtStructure] = [ // Tableau contenant la liste de tous les Street Arts (données en dur)
    
    // Pour les 7 oeuvres suivantes (sauf "a Joconde de Marseille" les données (condition et date) non spécifiées dans le cahier des charges et donc fictives pour le bien du projet

    StreetArtStructure(
        title: "Liberté Égalité Fraternité",
        artiste: "Shepard Fairey",
        condition: "Excellente",
        date: "Juin 2019",
        location: "Paris",
        imageName: "LiberteEgalite_fraternite",
        description: "Dans le cadre de l'exposition « Marianne au cœur des murs » présentée à Paris, coproduite par le Centre des Arts Urbains et la Galerie de l'Est, le collectif d'artistes parisiens a reçu « carte blanche » de l'artiste Shepard Fairey pour revisiter l'œuvre « Liberté Égalité Fraternité ». Produite et coordonnée par l'association ArtMural, elle est la première représentation moderne de cette fresque républicaine au sein de la capitale.",
        type: "Fresque",
        imageMap: "Placeholder"
    ),
    StreetArtStructure(
        title: "La Joconde de Marseille",
        artiste: "KAN DMV",
        condition: "Bonne",
        date: "Mars 2022",
        location: "Palais de la Bourse, 13001 Marseille",
        imageName: "LaJocondeDeMarseille",
        description: "Dans le cadre de l’exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduite par le Grand Palais Immersif et le Musée du Louvre, le MauMA : Musée des arts urbains de Marseille a donné « carte blanche » à l’artiste Kan / DMV pour la réalisation de l’œuvre « La Joconde de Marseille ». Produite et coordonnée par Méta 2, elle est la première représentation urbaine de la célèbre Monna Lisa au sein de la cité phocéenne.",
        type: "Harlftone",
        imageMap: "Map"
    ),
    StreetArtStructure(
        title: "La maison de Cécile",
        artiste: "Kitsune Jolene",
        condition: "Bonne",
        date: "2021",
        location: "Paris",
        imageName: "LaMaisonDeCecille",
        description: "Dans le cadre du festival « Résonances Urbaines » organisé dans le 11e arrondissement de Paris, coproduit par l'Institut du Monde de la Rue et le Pavillon de l'Arsenal, le collectif local a donné « carte blanche » à l'artiste Kitsune Jolene pour la réalisation de l'œuvre « La maison de Cécile ». Produite et coordonnée par l'atelier StreetArtParis, elle s'inscrit comme une référence poétique majeure dans ce quartier historique.",
        type: "Pochoir",
        imageMap: "Placeholder"
    ),
    StreetArtStructure(
        title: "Chloé",
        artiste: "JDL",
        condition: "Très Bonne",
        date: "Octobre 2020",
        location: "Marseille",
        imageName: "Chloe",
        description: "Dans le cadre du projet « Visages du Sud » exposé sur les façades marseillaises, coproduit par la Criée et le Musée des Civilisations, le collectif d'art contemporain a offert « carte blanche » à l'artiste JDL pour la création de l'œuvre magistrale intitulée « Chloé ». Produite et coordonnée par l'association SudArt, elle s'impose comme le premier portrait monumental en noir et blanc célébrant la jeunesse au cœur de la cité phocéenne.",
        type: "Portrait",
        imageMap: "Placeholder"
    ),
    StreetArtStructure(
        title: "PA_278",
        artiste: "Invader",
        condition: "Excellente",
        date: "2018",
        location: "Paris",
        imageName: "PA_278",
        description: "Dans le cadre du parcours « Mosaïques Secrètes » déployé à travers les ruelles de Paris, coproduit par le fonds d'art contemporain et la Mairie de Paris, le réseau d'art de rue a donné « carte blanche » à l'artiste Invader pour la pose du carreau « PA_278 ». Produite et coordonnée par le collectif PixelArt, cette installation discrète est devenue un repère incontournable pour les chasseurs d'art de la capitale.",
        type: "Mosaïque",
        imageMap: "Placeholder"
    ),
    StreetArtStructure(
        title: "Chuuuut...",
        artiste: "Jef Aérosol",
        condition: "Bonne",
        date: "Mai 2012",
        location: "Paris",
        imageName: "Chuuuut",
        description: "Dans le cadre de la rétrospective « Les Silences de la Ville » installée sur la place Igor-Stravinsky à Paris, coproduite par le Centre Pompidou et la Galerie du Jour, les curateurs ont laissé « carte blanche » à l'artiste Jef Aérosol pour la conception de l'œuvre « Chuuuut... ». Produite et coordonnée par l'atelier SprayArt, elle reste le pochoir monumental le plus photographié de la scène parisienne.",
        type: "Pochoir",
        imageMap: "Placeholder"
    ),
    StreetArtStructure(
        title: "Le Tigre et la Cigale",
        artiste: "Seth Globepainter",
        condition: "Excellente",
        date: "Novembre 2023",
        location: "Marseille",
        imageName: "LeTigreEtLaCigale",
        description: "Dans le cadre de la biennale « Faune Urbaine » sur les hauteurs du cours Julien à Marseille, coproduite par le collectif d'art du Panier et les Beaux-Arts, les organisateurs ont accordé « carte blanche » à l'artiste Seth Globepainter pour la fresque « Le Tigre et la Cigale ». Produite et coordonnée par l'association Couleurs du Sud, elle illumine le quartier par ses nuances colorées et son regard enfantin.",
        type: "Fresque",
        imageMap: "Placeholder"
    )
]
