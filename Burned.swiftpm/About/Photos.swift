//
//  Photos.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 22/02/24.
//

import SwiftUI

struct Photos: View {
    @Binding var username: String
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                Text("Tudo que descobri").font(.largeTitle)
                Text("\(username) Aqui é onde eu colocaria minhas informações de um longo tempo de pesquisa e dedução ciêntifica, para você se envolver com a Lula Bobtail ")
            }
            
            VStack (alignment: .leading) {
                DisclosureGroup {
                    Text("A Lula Bobtail, também conhecida como Lula Bobtail Havaiana, é uma pequena espécie de cefalópode que pertence à família Sepiolidae. \nÉ encontrada nas águas costeiras das ilhas havaianas e é conhecida por sua relação simbiótica única com bactérias bioluminescentes.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Visã Geral").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("texto de descobertas tarará tarará").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Como vai aparecer na tela para clicar").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("texto de descobertas tarará tarará").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Como vai aparecer na tela para clicar").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("texto de descobertas tarará tarará").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Como vai aparecer na tela para clicar").multilineTextAlignment(.leading)
                }
            }
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "washer").accessibility(hidden: true)
                    Text("").font(.headline)
                }
            }
        }
    }
}

#Preview {
    Photos(username: .constant("Bobtail"))
}
