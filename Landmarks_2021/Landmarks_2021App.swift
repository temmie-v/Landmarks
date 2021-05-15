//
//  Landmarks_2021App.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/09.
//

import SwiftUI

@main
struct Landmarks_2021App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{
                    let l = load()
                    print(l)
                    
                    
                }
        }
    }
}

//func hoge(arg1: Int, arg2: String) -> String{ ... }
//返り値複数：構造体を作って返そう
