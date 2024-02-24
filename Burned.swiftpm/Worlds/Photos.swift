//
//  Photos.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 22/02/24.
//

import SwiftUI

struct Photos: View {
    @Binding var username: String
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                Text("Exclusive images")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)
                Text("\(Text(username).bold()) Here you have the possibility to find the true essence of the Bobtail Squid in this exclusive image, accompanied by laboratory-grown colonies of Vibrio bacteria. An intimate look at these fascinating beings, revealing the behind-the-scenes of their intriguing coexistence.").frame(maxWidth: .infinity, alignment: .leading)
            }
            
            VStack (alignment: .leading) {
                DisclosureGroup {
                    Image("Bob")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } label: {
                    Text("Squid image").multilineTextAlignment(.leading)
                }
                
                DisclosureGroup {
                    Image("Vibrio H1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } label: {
                    Text("Aliivibrio image").multilineTextAlignment(.leading)
                }
                
            }
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "photo.circle").accessibility(hidden: true)
                    Text("Photos").font(.headline)
                }
            }
        }
    }
}

#Preview {
    Photos(username: .constant("Test"))
}
