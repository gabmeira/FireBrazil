//
//  Journey.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 24/02/24.
//

import SwiftUI

struct Journey: View {
    @Binding var username: String
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                Text("End of the beginning of the journey")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)
                Text("\(Text(username).bold()) my hidden biodiversity detective, I hope you have discovered how unexplored this world still is and how different they are to a life there. As the American poet Walt Whitman wrote in the phrase \"I contain multitudes\" in his poem Song of Myself, from 1855, of course the context was different, but it fits very well for a world where the need to live in harmony with others is of major importance.").frame(maxWidth: .infinity, alignment: .leading)
            }
            
            VStack (alignment: .leading) {
                DisclosureGroup {
                    Text("I invite you to look for other unexplored places in your community with water, soil or air or as we have seen inside other beings. The search for an answer is one of the main motivations that a detective/scientist has, and only with them can we find a new path with more harmony.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Next steps").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Text("Lignocellulose-degrading bacteria in the gut of termites | online articles").frame(maxWidth: .infinity, alignment: .leading)
                    Text("Meet the microscopic life in your home - and on your face | TED").frame(maxWidth: .infinity, alignment: .leading)
                    Text("This deep-sea mystery is changing our understanding of life | TED").frame(maxWidth: .infinity, alignment: .leading)
                    Text("The mysterious microbes living deep inside the earth - and how they could help humanity | TED").frame(maxWidth: .infinity, alignment: .leading)
                    Text("Disentangling host–microbiota complexity through hologenomics | cientific magazine").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Suggestions for other cases").multilineTextAlignment(.leading)
                }
                
            }
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
