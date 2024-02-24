//
//  Aquatic.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 19/02/24.
//

import SwiftUI

struct Aquatic: View {
    @State private var opacity = 0.0
    @Binding var username: String
    @State var showingAlert = false
    
    var body: some View {
            
        ZStack {
        
            Image("OceanoNave")
                .resizable()
                .aspectRatio(contentMode: .fill)

            VStack {
                Text("🦑")
                    .font(.system(size: UIScreen.main.bounds.height * 0.30))
                    .opacity(1 - opacity)

                HStack {
                    
                    Text("❌")
                        .padding(.leading, 32)
                        
                    Slider(
                        value: $opacity,
                        in: 0...1
                    )
                    .padding(.horizontal, 30)
                    
                    
                    Text("🦠")
                        .font(.system(size: 24))
                        .padding(.trailing, 32)
                    
                }.frame(width: UIScreen.main.bounds.width * 0.5, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray.opacity(0.35))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.purple, lineWidth: 2)
                    )
            }
            .alert("Squid is in danger, activate bioluminescence to make the squid invisible", isPresented: $showingAlert) {
                Button("Save biodiversity") { }
            }
        }
        .ignoresSafeArea()
        .onAppear{
            showingAlert = true
        }

    }
}

#Preview {
    Aquatic(username: .constant("Test"))
}
