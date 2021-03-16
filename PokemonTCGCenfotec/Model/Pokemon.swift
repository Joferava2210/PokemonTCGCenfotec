//
//  Pokemon.swift
//  PokemonTCGCenfotec
//
//  Created by Felipe Ramirez Vargas on 11/3/21.
//

import Foundation

struct PokemonResponse: Codable, Identifiable {
    let id: String
    let images : images;
}

struct images: Codable {
    let small : String;
}

let TEST_POKEMON: [images] = [
    .init(small: "https://images.pokemontcg.io/gym2/1.png"),
    .init(small: "https://images.pokemontcg.io/gym2/2.png"),
    .init(small: "https://images.pokemontcg.io/gym2/3.png"),
    .init(small: "https://images.pokemontcg.io/gym2/4.png"),
    .init(small: "https://images.pokemontcg.io/gym2/5.png"),
    .init(small: "https://images.pokemontcg.io/gym2/6.png"),
    .init(small: "https://images.pokemontcg.io/gym2/7.png"),
    .init(small: "https://images.pokemontcg.io/gym2/8.png"),
    .init(small: "https://images.pokemontcg.io/gym2/9.png"),
    .init(small: "https://images.pokemontcg.io/gym2/10.png"),
    .init(small: "https://images.pokemontcg.io/gym2/11.png"),
    .init(small: "https://images.pokemontcg.io/gym2/12.png"),
    .init(small: "https://images.pokemontcg.io/gym2/13.png"),
    .init(small: "https://images.pokemontcg.io/gym2/14.png"),
    .init(small: "https://images.pokemontcg.io/gym2/15.png"),
    .init(small: "https://images.pokemontcg.io/gym2/16.png"),
    .init(small: "https://images.pokemontcg.io/gym2/17.png"),
    .init(small: "https://images.pokemontcg.io/gym2/18.png"),
    .init(small: "https://images.pokemontcg.io/gym2/19.png"),
    .init(small: "https://images.pokemontcg.io/gym2/20.png"),
]
