//
//  Start.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 22/02/24.
//

import SwiftUI

struct Start: View {
    @Binding var username: String
    @State var selection: Int?
    
    var body: some View {
        NavigationView {
            
            List {
                
                Section (header: Text("clues")) {
                    
                    NavigationLink (tag: 0, selection: $selection) {
                        Squid(username: $username)
                    } label: {
                        Label("Squid", systemImage: "paperclip.circle")
                    }
                    NavigationLink () {
                        Photos(username: $username)
                    } label: {
                        Label("Photos", systemImage: "photo.circle")
                    }
                }
                
                Section (header: Text("Tool")) {
                    
                        NavigationLink () {
                            Aquatic(username: $username)
                            
                        } label: {
                            Label("water", systemImage: "wand.and.stars.inverse")
                        }
                        
                    }
                
                Section (header: Text("End of the beginning")) {
                    
                        NavigationLink () {
                            Journey(username: $username)
                            
                        } label: {
                            Label("Considerations", systemImage: "person.2")
                        }
                        
                    }
                    
                }
                

        }.onAppear(perform: {
            selection = 0;
        })
    }
}

#Preview {
    Start(username: .constant("A"))
}
