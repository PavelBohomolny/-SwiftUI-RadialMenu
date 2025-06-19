//
//  ContentView.swift
//  SwiftUI-RadialMenu
//

import SwiftUI

struct ContentView: View {
    let diameter: CGFloat = 320
    let arcWidth: CGFloat = 90
    
    var body: some View {
        ZStack {
            ArcButton(
                iconName: "globe",
                label: "Checkin",
                startDegrees: 225,
                endDegrees: 315,
                arcWidth: arcWidth
            ) {
                print("Checkin")
            }
            .tint(.green)
            .offset(y: (arcWidth - diameter) / 2)
            
            ArcButton(
                iconName: "minus.circle.fill",
                startDegrees: 135,
                endDegrees: 225,
                arcWidth: arcWidth
            ) {
                print("Minus")
            }
            .tint(.brown)
            .offset(x: (arcWidth - diameter) / 2)
            
            ArcButton(
                iconName: "plus.circle.fill",
                startDegrees: -45,
                endDegrees: 45,
                arcWidth: arcWidth
            ) {
                print("Plus")
            }
            .tint(.blue)
            .offset(x: (diameter - arcWidth) / 2)
            
            ArcButton(
                iconName: "microphone.fill",
                label: "Record",
                startDegrees: 45,
                endDegrees: 135,
                arcWidth: arcWidth
            ) {
                print("Record")
            }
            .tint(.cyan)
            .offset(y: (diameter - arcWidth) / 2)
            
            Button {
                print("Panic")
            } label: {
                VStack {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Panic")
                }
                .frame(width: 107, height: 107)
            }
            .frame(width: 122, height: 122)
            .background(
                Circle()
                    .fill(Color.red)
            )
            .foregroundColor(.white)
        }
        .frame(width: diameter, height: diameter)
        .imageScale(.large)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
