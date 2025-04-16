//
//  ContentView.swift
//  Section3
//
//  Created by 송주영 on 4/16/25.
//

import SwiftUI

struct ContentView: View {
    
    let title = "끝말잇기게임"
    @State var nextWord: String = "" //뷰에서 쓰이는 변수는 @state 사용해야됨
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .bold()
            //  .padding(.top, 16)
            //  .padding(.bottom, 16)
                .padding(.vertical, 16)
            //  .padding(.leading, 16)
            //  .padding(.trailling, 16)
                .padding(.horizontal, 20)
                .background(
                    RoundedRectangle(cornerRadius: 15).fill(Color.teal).opacity(0.2).shadow(radius: 5)
                )
                .padding(.top,2)
            
            
            TextField("단어를 입력하세요", text: $nextWord)
//                .padding()
              .padding(.leading, 16)
              .padding(.vertical, 5)
                .background(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 6))
            
            Text(nextWord)
            
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
//Text(title).font(.largeTitle)
//Text(title).font(.title)
//Text(title).font(.title2)
//Text(title).font(.title3)
//Text(title).font(.body)
//Text(title).font(.headline)
//Text(title).font(.subheadline)
//Text(title).font(.footnote)
//Text(title).font(.caption)
//Text(title).font(.caption2
