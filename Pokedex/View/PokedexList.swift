//
//  PokedexList.swift
//  Pokedex
//
//  Created by AMStudent on 10/20/21.
//

import SwiftUI

struct PokedexList: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach(0..<151) { _ in PokemonCards(pokemonData: MockData[0])
                        
                    }
                }
            }
            .navigationTitle("POKEDEX")
        }
    }
}

struct PokedexList_Previews: PreviewProvider {
    static var previews: some View {
        PokedexList()
    }
}
