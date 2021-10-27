//
//  PokedexList.swift
//  Pokedex
//
//  Created by AMStudent on 10/20/21.
//

import SwiftUI

struct PokedexList: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
        @ObservedObject var viewModel = PokemonViewModel()
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 20)
                {
                    ForEach(viewModel.pokemon)  { pokemon in PokemonCards(pokemonData: pokemon, pokemonViewModel: viewModel)
                        
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
