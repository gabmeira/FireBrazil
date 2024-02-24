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
            Text("Before we set off on this scientific journey, \nI need to know what to call you on this mission.")
                .multilineTextAlignment(.center)
                .padding()
                .font(.system(size: 30))
            
            TextField("Your best hidden biodiversity detective name", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 350)
            
            
            // Mudar para NavigationStack mas manter a obrigatoriedade do preenchimento
            NavigationLink(
                destination: Start(username: $username),
                isActive: $navigationEnabled,
                label: {
                Text("Ready to get started?")
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
