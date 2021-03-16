//
//  PokemonCell.swift
//  PokemonTCGCenfotec
//
//  Created by Felipe Ramirez Vargas on 11/3/21.
//

import SwiftUI

extension Image {
    func data(url:URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            guard let image = UIImage(data: data) else {
                return Image(systemName: "square.fill")
            }
            
            return Image(uiImage: image)
                .resizable()
            

        }
        return self
            .resizable()
    }
}

struct PokemonCell: View {
    
    let pokemon: images;
    
    var body: some View {
        ZStack{
            VStack {
//                if let bannerURL = URL(string: "https://images.pokemontcg.io/gym2/4.png") {
//                    Image(systemName: "square.fill").data(url: bannerURL)
//                        .resizable()
//                        .frame(width: 100.0, height: 100.0)
//                }
                if let bannerURL = URL(string: pokemon.small) {
                    Image(systemName: "square.fill").data(url: bannerURL)
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green ,radius: 6, x: 0.0, y: 0.0)
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell(pokemon: TEST_POKEMON[5])
    }
}
