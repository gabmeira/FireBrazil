import SwiftUI

struct ContentView: View {
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
                        Aquatic()
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
                        ContentView()
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
