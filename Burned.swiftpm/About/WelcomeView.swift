//
//  WelcomeView.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 19/02/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("Bem Vindo!").font(.largeTitle).frame(maxWidth: .infinity, alignment: .center)
                Text("""
LAPIDAR MELHOR A IDEIA: Na entrada do App eu solicito o nome da pessoa ou como ele quer se chamar para entrar na aventura de ser uma assistente/auxiliar de um detetivo da biodiversidade microbiana (oculta)?

Qual o caso que o detetive está a solucionar? Preciso de algo para amarar tudo!

Bem-vindos à revelação de um ecossistema imperceptível, um palco onde a minúcia ganha protagonismo. Adentramos um domínio onde a biodiversidade microbiana, carinhosamente chamada de biodiversidade oculta, desenha os contornos essenciais da vida. Sob as superfícies do nosso mundo, uma sinfonia microscópica se desenrola, conectando cada organismo em uma dança invisível da existência. Prepare-se para explorar um universo que transcende o olhar comum, onde a grandeza se manifesta no micro, inspirando uma nova compreensão sobre a complexidade que sustenta o equilíbrio da natureza.

A biodiversidade oculta é a essência invisível que, ao desvendar os segredos microbianos, revela as chaves para a resiliência e equilíbrio ambiental.🔍

LAPIDAR MELHOR A IDEIA:
Em um laboratório futurista, o cientista microbiona, conhecido como Detetive Microscópio, embarca em uma jornada para desvendar os mistérios da biodiversidade oculta. Equipado com tecnologia de ponta, ele revela o palco imperceptível onde a minúcia ganha protagonismo, desenhando os contornos essenciais da vida. Adentrando o domínio microbiano, Detetive Microscópio desvenda uma sinfonia microscópica que conecta cada organismo em uma dança invisível da existência. Nessa busca pela verdade, ele desenterra a essência invisível que revela as chaves para a resiliência e equilíbrio ambiental, inspirando uma nova compreensão sobre a complexidade que sustenta o ecossistema invisível que mantém o equilíbrio da natureza.


LAPIDAR MELHOR A IDEIA FINAL DO APP: Lembrar o usuário que a ciência nunca é feita sozinha e que ele/ela foi de imensa importância para as descobrertas feitas. 

""")
            }
            VStack (alignment: .center) {
                Image("Detetive Microbiano")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 640)
                    .accessibility(hidden: true)
            }
        }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "questionmark.circle").accessibility(hidden: true)
                        Text("Introduction").font(.headline)
                    }
                }
            }
    }
}


#Preview {
    WelcomeView()
}
