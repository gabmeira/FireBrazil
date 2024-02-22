import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("🕵️")
                    .font(.system(size: 300))
                Text("""
Ei, pessoal! O Detetive Micro aqui. Finalmente desvendei os segredos por trás da luminescência das Lulas Bobtail! 🕵️‍♂️💡
""")
                .bold()
                .font(.system(size: 30))
                .frame(width: 700)
                
                NavigationLink("Vamos lá?", destination: Name())
                .font(.system(size: 30))
                .bold()
                .padding(.top, 30)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
