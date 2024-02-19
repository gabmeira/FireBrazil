//
//  Aquatic.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 19/02/24.
//

import SwiftUI

struct Aquatic: View {
    @State private var celsius: Double = 0
    
    var body: some View {
        Text("""

Enquanto Detetive Microscópio aprofunda sua investigação, ele desvenda o intrigante mistério das lulas Bobtail, que mantêm uma relação simbiótica única com uma bactéria luminescente. Descobrindo que essa simbiose é a fonte da luminescência cutânea dessas criaturas do oceano, ele percebe o potencial revolucionário dessa descoberta. Ao compreender as complexas interações microbianas, o detetive vislumbra aplicações científicas, desde avanços na bioluminescência artificial até possíveis aplicações médicas. Essa revelação não apenas ilumina os segredos do oceano, mas também abre novas perspectivas para a ciência e a inovação.
""")
        Text("🦑")
            .font(.system(size: 300))
        
        Slider(value: $celsius, in: -100...100)
    }
}

#Preview {
    Aquatic()
}
