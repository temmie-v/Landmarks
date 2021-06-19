//
//  LandmarkList.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/15.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: LandmarkDetail(landmark: Landmark(
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
                            latitude: 34.011286,
                            longitude: -116.166868)
                        )
                    ),
                    label: {
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
                            coordinates: Landmark.Coordinate(
                                latitude: 34.011286,
                                longitude: -116.166868)
                            )
                        )
                    }
                )
                NavigationLink(
                    destination: LandmarkDetail(landmark: Landmark(
                        name: "Silver Salmon Creek",
                        category: "Lakes",
                        city: "Port Alsworth",
                        state: "Alaska",
                        id: 1002,
                        isFeatured: false,
                        isFavorite: false,
                        park: "Lake Clark National Park and Preserve",
                        description: "description ...",
                        imageName: "silversalmoncreek",
                        coordinates: Landmark.Coordinate(
                            latitude: 59.980167,
                            longitude: -152.665167)
                        )
                    ),
                    label: {
                        LandmarkRow(landmark: Landmark(
                            name: "Silver Salmon Creek",
                            category: "Lakes",
                            city: "Port Alsworth",
                            state: "Alaska",
                            id: 1002,
                            isFeatured: false,
                            isFavorite: false,
                            park: "Lake Clark National Park and Preserve",
                            description: "description ...",
                            imageName: "silversalmoncreek",
                            coordinates: Landmark.Coordinate(
                                latitude: 59.980167,
                                longitude: -152.665167)
                            )
                        )
                    }
                )
            }
        .navigationTitle("Landmarks")
        .navigationBarTitleDisplayMode(.automatic)
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
