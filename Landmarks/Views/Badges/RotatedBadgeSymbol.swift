//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Andrew Shon on 7/21/22.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeView()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}


struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
