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
            
        ZStack {
        
            Image("OceanoNave")
                .resizable()
//                .frame(width: 1500, height: 500)
                .aspectRatio(contentMode: .fill)
//
            VStack {
                Text("🦑")
                    .font(.system(size: UIScreen.main.bounds.height * 0.30))
                    .opacity(1 - opacity)
                //                .offset(x: UIScreen.main.bounds.width / 11, y: UIScreen.main.bounds.height / 15)
                HStack {
                    
                    Text("🦠")
                        .opacity(0.8)
                        .padding(.leading, 16)
                        
                    Slider(
                        value: $opacity,
                        in: 0...1
                    )
                    .padding(.horizontal, 30)
                    
                    
                    Text("🦠")
                        .padding(.trailing, 32)
                    
                }.frame(width: UIScreen.main.bounds.width * 0.5, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray.opacity(0.35))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.purple, lineWidth: 2)
                    )
            }
        }.ignoresSafeArea()
//            .background(Color.black.opacity(0.5))
            
            
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
            
//        }.frame(width: UIScreen.main.bounds.width , height: 0)

    }
}

#Preview {
    Aquatic(username: .constant("Ale"))
}
