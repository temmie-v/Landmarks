//
//  LandmarkRow.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/15.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            Text(landmark.name)
            Spacer()
        }
    }
}


struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: Landmark(
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
                coordinates: Landmark.Coordinate(latitude: 34.011286, longitude: -116.166868)
                )
            )
            LandmarkRow(landmark: Landmark(
                name: "Lake Umbagog",
                category: "Lakes",
                city: "Errol",
                state: "New Hampshire",
                id: 1012,
                isFeatured: false,
                isFavorite: false,
                park: "Umbagog National Wildlife Refuge",
                description: "description",
                imageName: "umbagog",
                coordinates: Landmark.Coordinate(latitude: 34.011286, longitude: -116.166868)
                )
            )
            .preferredColorScheme(.dark)
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
