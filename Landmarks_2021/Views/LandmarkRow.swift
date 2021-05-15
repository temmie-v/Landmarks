//
//  LandmarkRow.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/15.
//

import SwiftUI


struct LandmarkRow: View {
    var body: some View {
        HStack{
            Image("turtlerock")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            Text("Turtle Rock")
            Spacer()
        }
    }
}


struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow()
    }
}
