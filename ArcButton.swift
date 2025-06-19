//
//  ArcButton.swift
//  SwiftUI-RadialMenu
//

import SwiftUI

struct ArcButton: View {
    let iconName: String
    var label: String = ""
    let startDegrees: Double
    let endDegrees: Double
    let arcWidth: CGFloat
    var gapWidth: CGFloat = 10
    var action: () -> Void
    
    var body: some View {
        let arcShape = ArcShapeTest(
            startAngle: .degrees(startDegrees),
            endAngle: .degrees(endDegrees),
            arcWidth: arcWidth,
            gapWidth: gapWidth
        )
        
        Button(action: action) {
            ZStack {
                arcShape
                    .fill(.tint)
                
                VStack(spacing: 4) {
                    Image(systemName: iconName)
                    
                    if !label.isEmpty {
                        Text(label)
                    }
                }
            }
        }
        .buttonStyle(.plain)
        .contentShape(arcShape)
    }
}

#Preview {
    ArcButton(iconName: "microphone.fill", label: "Record", startDegrees: 45, endDegrees: 135, arcWidth: 90) {}
}
