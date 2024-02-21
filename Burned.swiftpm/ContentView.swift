import SwiftUI

struct ContentView: View {
    @Binding var username: String
    
    var body: some View {
        NavigationView {
            
            List {
                
                Section (header: Text("About this app")) {
                    NavigationLink () {
                        WelcomeView()
                    } label: {
                    Label("Introdução", systemImage: "questionmark.circle")
                }
                }
                
                Section (header: Text("Biodiversidade oculta")) {
                    
                    NavigationLink () {
                        Aquatic(username: $username)
                    } label: {
                        Label("Água", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        Air()
                    } label: {
                        Label("Ar", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        Earth()
                    } label: {
                        Label("Terra", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        Earth()
                    } label: {
                        Label("Extra???", systemImage: "questionmark.circle")
                    }
            }
                Section (header: Text("Tools")) {
                    
                }
                
            }
        }
    }
}
