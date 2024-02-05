import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int?
    
    var body: some View {
        NavigationView {
            List {
                
                Section (header: Text("About this app")) {
                    NavigationLink (tag: 0, selection: $selection) {
                        WelcomeView()
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
                    
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("Notify bodies", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("first aid checklist", systemImage: "questionmark.circle")
                    }
                }
                
                Section (header: Text("Extra info")) {
                    
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("Brazilian fire data", systemImage: "questionmark.circle")
                    }
                    NavigationLink () {
                        ContentView()
                    } label: {
                        Label("Fire simulation", systemImage: "questionmark.circle")
                    }
                }
            }
        }
    }
}
