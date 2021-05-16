//
//  CircleImage.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/09.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("energy")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
