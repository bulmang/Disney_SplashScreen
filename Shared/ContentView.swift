//
//  ContentView.swift
//  Shared
//
//  Created by 하명관 on 2022/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // 기본 뷰
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 20){
                    
                    Image("justine")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 400)
                        .cornerRadius(15)
                    
                    Text("iJustine")
                        .font(.title.bold())
                }
                .padding()
            }
            .navigationTitle("Latest")
        }
        // Zstack 이후 이슈가 있는 애니메이션을 오버레이
        .overlay(SplashScreen())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
