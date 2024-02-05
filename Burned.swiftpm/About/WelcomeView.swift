//
//  SwiftUIView.swift
//  
//
//  Created by Gabriel Bruno Meira on 05/02/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                Text("Welcome!")
                Text("""
No cenário contemporâneo, em que a preservação ambiental e a segurança pública são pautas prioritárias, a inovação tecnológica desempenha um papel fundamental na busca por soluções eficientes. Nesse contexto, surge um aplicativo revolucionário dedicado à notificação de queimadas, proporcionando uma resposta ágil e eficaz para proteger ecossistemas, comunidades e a saúde humana. Este aplicativo pioneiro não apenas permite que usuários informem prontamente eventos de queimadas, mas também desencadeia uma série de recursos e alertas para uma resposta coordenada e eficiente das autoridades competentes. 🔥
""")
                VStack (alignment: .center) {
                    Image("MapsBurned")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 640)
                        .accessibility(hidden: true)
                }
                
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
