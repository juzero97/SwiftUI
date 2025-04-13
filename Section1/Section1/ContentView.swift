//
//  ContentView.swift
//  Section1
//
//  Created by 송주영 on 4/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.title)              // 글꼴 크기 조정
            .foregroundColor(.blue)    // 글자 색상 변경
            .background(Color.yellow)   // 배경색 추가
            .padding()                 // 여백 추가
            .fontWeight(.heavy)
            .border(Color.pink , width: 5)
    }
            
}

#Preview {
    ContentView()
}

