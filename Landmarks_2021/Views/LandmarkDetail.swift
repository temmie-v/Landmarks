//
//  LandmarkDetail.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/09.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinates: landmark.coordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 250)
            CircleImage(landmark: landmark)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: Landmark(
            name: "Turtle Rock",
            category: "Rivers",
            city: "Twentynine Palms",
            state: "California",
            id: 1001,
            isFeatured: true,
            isFavorite: true,
            park: "Joshua Tree National Park",
            description: "description ...",
            imageName: "turtlerock",
            coordinates: Landmark.Coordinate(
                latitude: 34.011286,
                longitude: -116.166868)
            )
        )
        .previewDevice("iPhone 12")
    }
}
