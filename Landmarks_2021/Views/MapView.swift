//
//  MapView.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/09.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion( //経度と緯度、拡大率
        center: CLLocationCoordinate2D(latitude: 35.604806, longitude: 139.68392),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
