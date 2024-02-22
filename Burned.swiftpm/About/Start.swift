//
//  Start.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 22/02/24.
//

import SwiftUI

struct Start: View {
    @Binding var username: String
    
    var body: some View {
        NavigationView {
            
            List {
                
                Section (header: Text("clues")) {
                    
                    NavigationLink () {
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
                        Label("Água", systemImage: "wand.and.stars.inverse")
                    }
                }
                
            }
        }
    }
}

#Preview {
    Start(username: .constant("A"))
}
