import SwiftUI

struct ContentView: View {
    @State private var isBlinking = false

    var body: some View {
        NavigationView {
            VStack {
                Text("SECRET UNIVERSE!")
                    .font(.system(size: 50))
                    .fontWeight(.black)
                    .bold()
                Text("🕵️")
                    .font(.system(size: 300))
                Text("""
Hey, guys! Detective Micro here. I finally unlocked the secrets behind the luminescence of Bobtail Squids! 🦠💡
""")
                .bold()
                .font(.system(size: 24))
                .frame(width: 700)
                .multilineTextAlignment(.center)
                
                HStack {
                    Spacer()
                    
                    Text("Hold on! For a better experience, use the iPad in horizontal mode.")
                        .bold()
                        .font(.system(size: 18))
                        .opacity(isBlinking ? 0 : 1)
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                                isBlinking.toggle()
                            }
                        }
    
                    Spacer()
                        
                }
                .padding(5)
                .background(Color.yellow)
                .padding(.bottom, 50)
                .padding(.top, 50)
                
                
                NavigationLink(destination: Name()) {
                    Text("Let's go?")
                        .bold()
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
