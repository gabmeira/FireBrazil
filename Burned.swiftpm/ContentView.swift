import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                
                Section (header: Text("About this app")) {
                    NavigationLink () {
                        ContentView()
                    } label: {
                    Label("Introduction", systemImage: "questionmark.circle")
                }
                }
                
                Section (header: Text("Importance Guides")) {
                    
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("Environmental Preservation", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("Prevention of Uncontrolled Fires", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("Air quality", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("Emergency Planning and Response", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("Natural Disaster Control", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("Environmental monitoring", systemImage: "questionmark.circle")
                    }
            }
                Section (header: Text("Tools")) {
                    
                }
                
            }
        }
    }
}
