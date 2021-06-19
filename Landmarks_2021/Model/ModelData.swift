//
//  ModelData.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/15.
//

import Foundation

let landmarks = load()

func load() -> [Landmark] {
    print("load")
    let file = Bundle.main.url(forResource: "landmarkData", withExtension: ".json")!
    do {
        let data = try Data(contentsOf: file)
        let jsonDecoder = JSONDecoder()
        let landmarks = try jsonDecoder.decode([Landmark].self, from: data)
        print("loaded count :", landmarks.count)
        return landmarks
    } catch {
        print(error)
        return []
    }
}
