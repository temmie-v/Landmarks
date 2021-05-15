//
//  ContentView.swift
//  Landmarks_2021
//
//  Created by USER on 2021/05/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 250)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text("環境エネルギー\nイノベーション棟")
                    .font(.title)
                HStack{
                    Text("Tokyo Institute of Technology")
                        .font(.subheadline)
                    Spacer()
                    Text("Tokyo, Japan")
                        .font(.subheadline)
                }
                
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()

                Text("About")
                    .font(.title2)
                VStack{
                    HStack{
                        Text("建物名称")
                            .font(.subheadline)
                        Spacer()
                        Text("環境エネルギーイノベーション棟")
                            .font(.subheadline)
                    }
                    HStack{
                        Text("構造・規模")
                            .font(.subheadline)
                        Spacer()
                        Text("鉄構造 地上7階 地下2階")
                            .font(.subheadline)
                    }
                    HStack{
                        Text("完成時期")
                            .font(.subheadline)
                        Spacer()
                        Text("平成24年2月")
                            .font(.subheadline)
                    }
                    HStack{
                        Text("所在地")
                            .font(.subheadline)
                        Spacer()
                        Text("大岡山キャンパス北3号館")
                            .font(.subheadline)
                    }
                    if let url = URL(string: "https://www.titech.ac.jp/research/stories/eei_building.html") {
                        Link("東京工業大学の公式案内", destination: url)
                    }
                }
                    
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
