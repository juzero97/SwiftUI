//
//  InputView.swift
//  Section3
//
//  Created by 송주영 on 5/8/25.
//

import SwiftUI

struct InputView: View {
    @Binding var nextWord: String
    @Binding var words: [String]
    @Binding var showAlert: Bool
    
    var body: some View {
        HStack {
            // 텍스트 입력 필드
            TextField("단어를 입력하세요", text: $nextWord)
                .padding(.leading, 16)
                .padding(.vertical, 10)
                .background(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 2)) // 테두리
            
            // 확인 버튼
            Button {
                // 끝말이 이어지면 단어 추가
                if(words.last?.last?.lowercased() == nextWord.first?.lowercased()){
                    words.append(nextWord) // 단어 목록에 추가
                    nextWord = "" // 입력창 비우기
                } else {
                    nextWord = "" // 입력창 비우기
                    showAlert = true // 알림창 띄우기
                }
            } label: {
                // 버튼 모양
                Text("확인")
                    .foregroundStyle(Color.white)
                    .padding(.horizontal)
                    .padding(.vertical,10)
                    .background(RoundedRectangle(cornerRadius: 10))
            }
            // 알림창 설정
            .alert("끝말이이어지는 단어를 입력해주세요", isPresented: $showAlert){
                Button("확인",role: .cancel){
                    showAlert = false
                }
            }
        }
        .padding() // HStack 전체에 여백
        
    }
}

#Preview {
    InputView()
}
