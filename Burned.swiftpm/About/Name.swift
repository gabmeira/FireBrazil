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
        NavigationStack {
            VStack {
                Text("Qual seu nome detetive?")
                
                TextField("Digite seu nome", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 350)
                
                
                // Mudar para NavigationStack mas manter a obrigatoriedade do preenchimento
                NavigationLink(
                    destination: ContentView(username: $username),
                    isActive: $navigationEnabled,
                    label: {
                    Text("Ir para outra página")
                })
                .disabled(username.isEmpty)
            }
        }
    }
}

#Preview {
    Name()
}
