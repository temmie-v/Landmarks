//
//  Landmark.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/15.
//

import Foundation

// class

struct Landmark: Decodable {
    // var は変数、let は定数
    let id: Int
    let name: String
    let category: String
    let city: String
    let state: String
    let isFeatured: Bool
    let isFavorite: Bool
    let park: String
    let description: String
    let imageName: String
}


//func check<T: Equatable>(arg1: T, arg2: T){
//    if arg1 == arg2{
//        print("OK")
//    }else{
//        print("NG")
//    }
//}
