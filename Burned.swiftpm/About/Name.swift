//
//  Name.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 20/02/24.
//

import SwiftUI

struct Name: View {
    @State private var username: String = ""
    @State private var navigationEnabled = false
    
    var body: some View {
        VStack {
            Text("Antes de partirmos nessa jornada científica, \npreciso saber como chamar você nessa missão.")
                .multilineTextAlignment(.center)
                .padding()
                .font(.system(size: 30))
            
            TextField("Seu melhor nome de detetive da biodiversidade oculta", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 350)
            
            
            // Mudar para NavigationStack mas manter a obrigatoriedade do preenchimento
            NavigationLink(
                destination: Start(username: $username),
                isActive: $navigationEnabled,
                label: {
                Text("Pronto para começar?")
                        .font(.system(size: 20))
                        .bold()
            })
            .disabled(username.isEmpty)
        }
    }
}


#Preview {
    Name()
}
