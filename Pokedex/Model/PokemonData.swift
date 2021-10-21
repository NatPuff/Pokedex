//
//  PokemonData.swift
//  Pokedex
//
//  Created by AMStudent on 10/20/21.
//

import Foundation

struct PokemonData: Decodable, Identifiable {
    let id: Int
    let name: String
    //let imageURL: String
    let type: String
    let weight: Float
    let height: Float
    let description: String
    let attack: Float
    let defense: Float
    
}
let MockData: [PokemonData] = [
    .init(id: 0, name: "JigglyPuff",  type: "Normal/Fairy", weight: 15, height: 0.5, description: "Puff as seen frm above:", attack: 100, defense: 100),
    .init(id: 1, name: "JigglyPuff but again",  type: "Normal/Fairy", weight: 15, height: 0.5, description: "Puff as seen from above but a second time", attack: 100, defense: 100)]
