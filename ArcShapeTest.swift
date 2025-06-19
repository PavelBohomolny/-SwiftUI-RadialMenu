//
//  ArcShapeTest.swift
//  SwiftUI-RadialMenu
//

import SwiftUI

struct ArcShapeTest: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let arcWidth: CGFloat
    let gapWidth: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let outerRadius = min(rect.width, rect.height) / 2
        let innerRadius = outerRadius - arcWidth
        let outerGapAngle = Angle(radians: gapWidth / outerRadius)
        let innerGapAngle = Angle(radians: gapWidth / innerRadius)
        let path = Path { path in
            path.addArc(
                center: center,
                radius: outerRadius,
                startAngle: startAngle + (outerGapAngle / 2),
                endAngle: endAngle - (outerGapAngle / 2),
                clockwise: false
            )
            path.addArc(
                center: center,
                radius: innerRadius,
                startAngle: endAngle - (innerGapAngle / 2),
                endAngle: startAngle + (innerGapAngle / 2),
                clockwise: true
            )
            path.closeSubpath()
        }
        
        // Shift the path back to the middle of the area
        let midRadius = outerRadius - (arcWidth / 2)
        let midAngle = startAngle + ((endAngle - startAngle) / 2)
        let xOffset = -midRadius * cos(midAngle.radians)
        let yOffset = -midRadius * sin(midAngle.radians)
        return path.offsetBy(dx: xOffset, dy: yOffset)
    }
}
