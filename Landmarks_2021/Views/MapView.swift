//
//  MapView.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/09.
//

import SwiftUI
import MapKit

struct MapView: View {
    let coordinates: Landmark.Coordinate
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(
                        latitude: coordinates.latitude,
                        longitude: coordinates.longitude
                    ),
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.01,
                        longitudeDelta: 0.01
                    
                    )
                )
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            coordinates: Landmark.Coordinate(
                latitude: 34.011286,
                longitude: -116.166868
            )
        )
    }
}
