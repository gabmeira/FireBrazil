//
//  Aquatic.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 19/02/24.
//

import SwiftUI

struct Aquatic: View {
//    @State private var celsius: Double = 0
//    @State private var speed = 50.0
//    @State private var isEditing = false
    @State private var opacity = 0.0
    @Binding var username: String
    
    var body: some View {
        VStack {
            
            Text("""

    Enquanto Detetive Microscópio aprofunda sua investigação, ele desvenda o intrigante mistério das lulas Bobtail, que mantêm uma relação simbiótica única com uma bactéria luminescente. Descobrindo que essa simbiose é a fonte da luminescência cutânea dessas criaturas do oceano, ele percebe o potencial revolucionário dessa descoberta. Ao compreender as complexas interações microbianas, o detetive vislumbra aplicações científicas, desde avanços na bioluminescência artificial até possíveis aplicações médicas. Essa revelação não apenas ilumina os segredos do oceano, mas também abre novas perspectivas para a ciência e a inovação.
    """)
           
            
        ZStack {
        
            Image("OceanoNave")
                .resizable()
                .frame(width: 1500, height: 500)
//                    .frame(width: UIScreen.main.bounds.width / 1, height: UIScreen.main.bounds.height / 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
            Text("🦑")
                .font(.system(size: UIScreen.main.bounds.height * 0.30))
                .opacity(1 - opacity)
//                .offset(x: UIScreen.main.bounds.width / 11, y: UIScreen.main.bounds.height / 15)
            
            
            
        }
        
            Slider(value: $opacity, in: 0...1)
                .padding(100)
            
    //        VStack {
    //            RoundedRectangle(cornerRadius: 20)
    //                .fill(Color.blue)
    ////                .overlay(
    ////                RoundedRectangle(cornerRadius: 10)
    ////                    .stroke(Color.black, lineWidth: 2)
    ////                )
    //                .overlay(
    //                    RoundedRectangle(cornerRadius: 10)
    //                        .frame(width: 80, height: 80)
    //                        .foregroundColor(.clear)
    //                )
    //                .clipShape(RoundedRectangle(cornerRadius: 10))
    //                .frame(width: 100, height: 100)
    //
    //        }
            
            
           
            
    //        Slider(value: $celsius, in: -100...100)
    //            .padding()
    //        Slider(
    //            value: $speed,
    //            in: 0...100,
    //            step: 5
    //        ) {
    //            Text("Speed")
    //        } minimumValueLabel: {
    //            Text("0")
    //        } maximumValueLabel: {
    //            Text("100")
    //        } onEditingChanged: { editing in
    //                isEditing = editing
    //        }
    //        .padding()
    //
    //        Text("\(speed)")
    //            .foregroundColor(isEditing ? .red : .blue)
            
        }.frame(width: UIScreen.main.bounds.width , height: 0)

    }
}

#Preview {
    Aquatic(username: .constant("Ale"))
}
