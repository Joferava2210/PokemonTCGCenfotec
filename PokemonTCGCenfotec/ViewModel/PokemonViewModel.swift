//
//  PokemonViewModel.swift
//  PokemonTCGCenfotec
//
//  Created by Felipe Ramirez Vargas on 12/3/21.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    @Published var pokemon = [PokemonResponse]()
    let baseUrl = "https://api.pokemontcg.io/v2/cards?q=name:"
    let nameInit = "charizard"
    
    init(){
        fetchPokemon(nameUrl: nameInit)
    }
    
    
//    guard let url = URL(string: "https://cat-fact.herokuapp.com/facts") else {
//        print("Your API endpoint is invalid")
//        return
//    }
//    let request = URLRequest(url: url)
//
//    URLSession.shared.dataTask(with: request){data, response, error in
//        if let data = data {
//            if let response = try? JSONDecoder().decode([CatFact].self, from: data){
//                DispatchQueue.main.async {
//                    self.results = response
//                }
//                return
//            }
//        }
//    }.resume()
    
    
    func fetchPokemon(nameUrl: String){
        let urlFinal = baseUrl+nameUrl
        guard let url = URL(string: urlFinal) else {
            print("Your API endpoint is invalid")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode([PokemonResponse].self, from: data){
                    DispatchQueue.main.async {
                        self.pokemon = response
                    }
                    return
                }
            }
        }.resume()
    }
}
