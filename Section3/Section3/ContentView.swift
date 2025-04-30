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
    var words : [String] = ["사과","과일","일요일","일탈","탈모","모자"]
    
    /// <#Description#>
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
            
            
            HStack {
                TextField("단어를 입력하세요", text: $nextWord)
                //                .padding()
                    .padding(.leading, 16)
                    .padding(.vertical, 10)
                    .background(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 2))
                
                
                Button {
                    //동작
                    print("입력하신 단어는",nextWord)
                    //사용자가 입력한 단어 : nextword
                    //단어들의 목록 words
                    nextWord = ""
                    //                    print("눌림")
                    
                } label: {
                    //뷰
                    Text("확인")
                        .foregroundStyle(Color.white)
                        .padding(.horizontal)
                        .padding(.vertical,10)
                        .background(RoundedRectangle(cornerRadius: 10))
                }
                
            }
            .padding()
            
            List{
                ForEach(words.reversed(), id: \.self) {word in
                    Text(word)
                        .font(.title2)
                }
            }.listStyle(.plain)
            
            //            ScrollView{
            //                VStack{
            //                    ForEach(words, id: \.self) {word in
            //                        Text(word)
            //                    }
            //                }
        }
        
        
        Spacer()

    }
    
}
        
        
        
//        
//        HStack{
//            Text("Hello")
//            Text("Hello")
//            Text("Hello")
//            Text("Hello")
//            Text("Hello")
//        }
//        HStack{
//            ForEach(1..<6) { number in
//                Text("Hello")
//            }
//        }
    


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
