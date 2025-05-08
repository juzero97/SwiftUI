//
//  TitleView.swift
//  Section3
//
//  Created by 송주영 on 5/8/25.
//

import SwiftUI

struct TitleView: View {
    
    let title = "끝말잇기게임"  // 화면 제목
    var body: some View {
        HStack {
            Text(title)
                .font(.title) // 글자 크기
                .bold()       // 굵게
                .padding(.vertical, 16) // 위아래 여백
                .padding(.horizontal, 20) // 좌우 여백
                .background(
                    RoundedRectangle(cornerRadius: 15) // 둥근 테두리 배경
                        .fill(Color.teal)
                        .opacity(0.2)
                        .shadow(radius: 5) // 그림자 효과
                )
                .padding(.top,2)
        } // 상단 약간의 여백
    }
}

#Preview {
    TitleView()
}
