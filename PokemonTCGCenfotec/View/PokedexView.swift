//
//  PokedexView.swift
//  PokemonTCGCenfotec
//
//  Created by Felipe Ramirez Vargas on 11/3/21.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    @State var username: String = ""
    
    var body: some View {
        NavigationView{
            ScrollView{
                HStack{
                    Button(action: {
                        viewModel.fetchPokemon(nameUrl: username)
                    }) {
                        Text("Get Cards")
                    }
                    TextField("Enter pokemon", text: $username)
                       // .background(Color.blue)
                }
                Text("No se encontaron Pokemones, intente con otro nombre")
                LazyVGrid(columns: gridItems, spacing: 15) {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon.images)
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
