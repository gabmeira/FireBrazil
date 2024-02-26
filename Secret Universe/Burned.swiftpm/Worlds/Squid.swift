//
//  Squid.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 22/02/24.
//

import SwiftUI

struct Squid: View {
    
    @Binding var username: String
    
    var nameScientificSquid = Text("Euprymna scolopes").italic()
    var nameScientificBac = Text("Aliivibrio fischeri").italic()
    
    let soundManager = SoundManager.shared
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                Text("A hidden world")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)
                Text("\(Text(username).bold()), Intriguing clues are everywhere, just waiting to be discovered. Get ready to follow the tentacles of hidden biodiversity clues, where scientific fun intertwines with the mysterious world of biology or rather microbiology!").frame(maxWidth: .infinity, alignment: .leading)
            }
            
            VStack (alignment: .leading) {
                DisclosureGroup {
                    Text("The Bobtail Squid, also known as the Hawaiian Bobtail Squid, is a small species of cephalopod that belongs to the Sepiolidae family. Its scientific name is \(nameScientificSquid), it is normally found in the coastal waters of the Hawaiian Islands and is known for its unique symbiotic relationship with bioluminescent bacteria.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Overview").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("Bobtail squid are small cephalopods measuring approximately 2.5 cm to 4.5 cm (1 inch to 2 inches). They have a round body with a flat mantle, two large eyes and eight arms with two tentacles.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Physical characteristics").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("The bobtail squid is a small cephalopod that inhabits shallow and deep ocean regions throughout the world. They are commonly found in the Pacific Ocean, Indian Ocean and Atlantic Ocean.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Where they live").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("Bioluminescence is the production of light by living organisms. In the case of our little squid, she won hearts thanks to her symbiotic relationship with the bacteria \(nameScientificBac). The squid has a special light organ that houses bacteria, which produce light through a chemical reaction.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Bioluminescence").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("In June 2021, 128 baby bobtail squids were welcomed to the International Space Center. Squids in space. The most interesting thing is what they want to study, which is the relationship between microbes and the Bobtail Squid to see if space (micro gravity) interferes with the beneficial relationships between microbes and animals!").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("In the space between stars").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("The squid provides a safe, nutrient-rich environment for bacteria to grow and thrive, while the bacteria provide the squid with bioluminescence that helps it escape predators. Bacteria also help squid digest food more efficiently by breaking down complex molecules into simpler ones.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Benefits of Symbiosis").multilineTextAlignment(.leading)
                }
            }
        }
        .onAppear {
            guard !soundManager.isPlaying(sound: .PrivateEye) else { return }
            soundManager.play(sound: .PrivateEye)
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "paperclip.circle").accessibility(hidden: true)
                    Text("Squid").font(.headline)
                }
            }
        }
    }
}

#Preview {
    Squid(username: .constant("Test"))
}
