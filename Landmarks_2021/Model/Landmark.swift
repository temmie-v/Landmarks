//
//  Landmark.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/15.
//

import Foundation

struct Landmark: Decodable, Identifiable {
    let name: String
    let category: String
    let city: String
    let state: String
    let id: Int
    let isFeatured: Bool
    let isFavorite: Bool
    let park: String
    let description: String
    let imageName: String
    let coordinates: Coordinate
    
    struct Coordinate: Decodable {
        var latitude: Double
        var longitude: Double
    }
}
