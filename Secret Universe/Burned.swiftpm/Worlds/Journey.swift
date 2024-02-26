//
//  Journey.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 24/02/24.
//

import SwiftUI

struct Journey: View {
    @Binding var username: String
    
    let soundManager = SoundManager.shared
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                Text("End of the beginning of the journey")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)
                Text("\(Text(username).bold()) my hidden biodiversity detective, I hope you have discovered how unexplored this world still is and how different they are to a life there. As the American poet Walt Whitman wrote in the phrase \"I contain multitudes\" in his poem Song of Myself, from 1855, of course the context was different, but it fits very well for a world where the need to live in harmony with others is of major importance. \nThank you very much for playing Secret Universe developed by Gabriel Meira.").frame(maxWidth: .infinity, alignment: .leading)
            }
            .onAppear {
                soundManager.play(sound: .TremoloTwang)
            }
            
            VStack (alignment: .leading) {
                DisclosureGroup {
                    Text("I invite you to look for other unexplored places in your community with water, soil or air or as we have seen inside other beings. The search for an answer is one of the main motivations that a detective/scientist has, and only with them can we find a new path with more harmony.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Next steps").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("In my research, I embarked on a journey as fascinating as a game of discovery. I discovered that, in the great orchestra of the biosphere, microorganisms are the true conductors, conducting the symphony of biodiversity. Every corner of this ecosystem is a stage, and interactions with the microbial world are the plots that maintain the health and vitality of each actor and actress. It's as if every corner of the biosphere has its own exciting plot full of curiosities, and I was lucky enough to be one of the tellers of a story about this spectacular microbial universe! All credits and references can be found in the README file in my playground or by searching your search for terms in the next cases.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Researches").multilineTextAlignment(.leading)
                        
                }
                
                DisclosureGroup {
                    Text("Lignocellulose-degrading bacteria in the gut of termites | online articles").frame(maxWidth: .infinity, alignment: .leading)
                    Text("Meet the microscopic life in your home - and on your face | TED").frame(maxWidth: .infinity, alignment: .leading)
                    Text("This deep-sea mystery is changing our understanding of life | TED").frame(maxWidth: .infinity, alignment: .leading)
                    Text("The mysterious microbes living deep inside the earth - and how they could help humanity | TED").frame(maxWidth: .infinity, alignment: .leading)
                    Text("Disentangling host–microbiota complexity through hologenomics | cientific magazine").frame(maxWidth: .infinity, alignment: .leading)
                    Text("Quorum sensing in the squid-Vibrio symbiosis | cientific magazine").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Suggestions for other cases").multilineTextAlignment(.leading)
                        
                }
                
                
            }
        }
        .onAppear {
            guard !soundManager.isPlaying(sound: .TremoloTwang) else { return }
            soundManager.playLoop(sound: .TremoloTwang)
        }
        .padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "person.2").accessibility(hidden: true)
                        Text("Considerations").font(.headline)
                    }
                }
            }
    }
}

#Preview {
    Journey(username: .constant("Test"))
}
