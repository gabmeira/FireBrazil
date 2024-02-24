//
//  Squid.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 22/02/24.
//

import SwiftUI

struct Squid: View {
    
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
                
                Text("""

        Enquanto Detetive Microscópio aprofunda sua investigação, ele desvenda o intrigante mistério das lulas Bobtail, que mantêm uma relação simbiótica única com uma bactéria luminescente. Descobrindo que essa simbiose é a fonte da luminescência cutânea dessas criaturas do oceano, ele percebe o potencial revolucionário dessa descoberta. Ao compreender as complexas interações microbianas, o detetive vislumbra aplicações científicas, desde avanços na bioluminescência artificial até possíveis aplicações médicas. Essa revelação não apenas ilumina os segredos do oceano, mas também abre novas perspectivas para a ciência e a inovação.
        """)
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
    Squid(username: .constant("Bobtail"))
}
