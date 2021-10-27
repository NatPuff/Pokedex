//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by AMStudent on 10/20/21.
//

import SwiftUI


class PokemonViewModel: ObservableObject {
    @Published var pokemon = [PokemonData]()
    
    
    let apiURL = "https://firebasestorage.googleapis.com/v0/b/pokedex-35033.appspot.com/o/Copy%20of%20Pokemon%20Details%20-%20Transformed%20by%20Data.Page.json?alt=media&token=73470418-a36a-43a0-b00b-a114cfdd1587"
    
    init() {
        fetchPokemonData()
    }
    func fetchPokemonData(){
        guard let url = URL(string: apiURL) else {return}
        let session = URLSession.shared
        let task = session.dataTask(with: url) {(data, response, error) in
            guard let cleanData = data?.parseData(removeString: "null,") else {return}
            
            DispatchQueue.main.async {
                do{
                    let pokemon = try JSONDecoder().decode([PokemonData].self, from: cleanData)
                    self.pokemon = pokemon
                }catch{
                    print("error msg:", error)
                }
            }
        }
        task.resume()
    }
    func detectBackgroundColor(forType type: String)-> UIColor {
        switch type{
        case "fire": return .systemRed
        case "water": return .systemBlue
        case "fairy": return .systemPink
        case "poison": return .systemGreen
        case "psychic": return .systemPurple
        case "flying": return .systemTeal
        default: return .systemIndigo
        }
    }
}





extension Data{
        func parseData(removeString string: String) -> Data? {
            let dataAsString = String(data: self, encoding: .utf8)
            let ParseDataString = dataAsString?
                .replacingOccurrences(of: string, with: "")
            guard let data = ParseDataString?.data(using: .utf8)
            else {return nil}
            return data
        }
    }
