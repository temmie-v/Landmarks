//
//  ModelData.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/15.
//

import Foundation

func load() -> [Landmark] {
    print("load")
    let file = Bundle.main.url(forResource: "landmarkData", withExtension: ".json")!
    // ! ... nilでないことを保証。let i: Int = nilとするとエラー let i: Int? = nilなら
    // let i: Int? = 2
    // let j: Int = 1
    // if let unwrapI = i{
    //     let result = unwrapI + j
    //     print(i + j)
    // guard
    // }
    do{
        let data = try Data(contentsOf: file)
        let jsonDecoder = JSONDecoder()
        let landmarks = try jsonDecoder.decode([Landmark].self, from: data)
        
        //print("count:", landmarks.count)
        //print("first name:", landmarks[0].name)
        //print("first isFav:", landmarks[0].isFavorite)
        //print(landmarks)
        
        return landmarks
        
    }catch{
        print(error)
        return []
    }
}
