//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by AMStudent on 10/20/21.
//

import SwiftUI


class PokemonViewModel: ObservableObject {
    @Published var pokemon = [PokemonData]()
    
}
