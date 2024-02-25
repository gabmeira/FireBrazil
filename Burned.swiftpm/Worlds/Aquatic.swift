//
//  Aquatic.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 19/02/24.
//

import SwiftUI
import AVFoundation
import ConfettiSwiftUI

struct Aquatic: View {
    @State private var opacity = 0.0
    @Binding var username: String
    @State var showingAlert = false
    @State var alertEnd = false
    @State private var message = ""
    @State private var showConfetti = false
    @State private var showConfettiCounter = 0
    
    let soundManager = SoundManager.shared
    
    var body: some View {
            
        ZStack {
        
            Image("OceanoNave")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .onAppear {
                    soundManager.playLoop(sound: .SeaFuryMonster)
                }

            VStack {
                Text("🦑")
                    .font(.system(size: UIScreen.main.bounds.height * 0.30))
                    .opacity(1 - opacity)

                HStack {
                    
                    Text("❌")
                        .padding(.leading, 32)
                    
                    Slider(value: $opacity, in: 0...1)
                        .onChange(of: opacity) { newValue in
                            if newValue == 1 {
                                message = "Congratulations \(username), you put the clues together correctly. Squid Euprymna scolopes do not have natural bioluminescence, they need the bioluminescence of bacteria Aliivibrio fischeri. Comunication occurs via Quorum sensing."
                                
                                alertEnd = true
                                soundManager.stop(sound: .SeaFuryMonster)
                                showConfetti = true
                                showConfettiCounter += 1
                                
                            } else {
                                message = ""
                                alertEnd = false
                                showConfetti = false
                            }
                        }
                        .confettiCannon(counter: $showConfettiCounter, num: 300, confettis: [.text("🐡"), .text("🦑"), .text("🦠")], confettiSize: 25.0, rainHeight: 1000.0, radius: 700)
                        .padding(.horizontal, 30)
                    
                    
                    Text("🦠")
                        .font(.system(size: 24))
                        .padding(.trailing, 32)
                    
                }.frame(width: UIScreen.main.bounds.width * 0.5, height: 100, alignment: .center)
                    .background(Color.black.opacity(0.5))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.purple, lineWidth: 2)
                    )
                
                HStack {
                    Rectangle()
                        .foregroundColor(Color.black.opacity(0.5))
                        .frame(width: UIScreen.main.bounds.width * 0.501, height: 105, alignment: .center)
                        .overlay(
                            ScrollView {
                                Text(message)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(7)
                                    .padding(.top, 5)
                                    .lineLimit(nil)
                            }
                        )
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.purple, lineWidth: 4)
                        )
                        .cornerRadius(10)
                }
                .opacity(alertEnd ? 1 : 0)
                .animation(.easeInOut)
                .padding(.bottom, -100)
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
