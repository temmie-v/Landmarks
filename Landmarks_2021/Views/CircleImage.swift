//
//  CircleImage.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/09.
//

import SwiftUI

struct CircleImage: View {
    let landmark: Landmark
    
    var body: some View {
        Image(landmark.imageName)
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
        CircleImage(landmark: Landmark(
            name: "Turtle Rock",
            category: "Rivers",
            city: "Twentynine Palms",
            state: "California",
            id: 1001,
            isFeatured: true,
            isFavorite: true,
            park: "Joshua Tree National Park",
            description: "description",
            imageName: "turtlerock",
            coordinates: Landmark.Coordinate(
                latitude: 44.747408,
                longitude: -71.056816)
            )
        )
    }
}
