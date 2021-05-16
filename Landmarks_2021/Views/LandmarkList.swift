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
                    destination: ContentView(),
                    label: {
                        LandmarkRow()
                    }
                )
                LandmarkRow()
                LandmarkRow()
                LandmarkRow()
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
