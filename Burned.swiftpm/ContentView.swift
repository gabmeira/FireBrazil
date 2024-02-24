import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("🕵️")
                    .font(.system(size: 300))
                Text("""
Hey, guys! Detective Micro here. I finally unlocked the secrets behind the luminescence of Bobtail Squids! 🦠💡
""")
                .bold()
                .font(.system(size: 30))
                .frame(width: 700)
                
                NavigationLink("Let's go?", destination: Name())
                .font(.system(size: 30))
                .bold()
                .padding(.top, 30)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
