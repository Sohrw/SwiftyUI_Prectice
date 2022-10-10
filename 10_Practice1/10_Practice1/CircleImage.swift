//
//  CircleImage.swift
//  10_Practice1
//
//  Created by 권현욱 on 2022/10/10.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        NavigationView{
            Image("a45ca683345c842c1cd2af5b674ed62a7a7dcac4")
            
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        }
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
