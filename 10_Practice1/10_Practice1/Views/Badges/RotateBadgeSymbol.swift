//
//  RotateBadgeSymbol.swift
//  10_Practice1
//
//  Created by 권현욱 on 2022/10/11.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    let angle : Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor : .bottom)
    }
}

struct RotateBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotateBadgeSymbol(angle: Angle(degrees: 5))
    }
}
