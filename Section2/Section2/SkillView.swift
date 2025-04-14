//
//  SkillView.swift
//  Section2
//
//  Created by 송주영 on 4/14/25.
//

import SwiftUI

struct SkillView: View {
    var body: some View {
        VStack(alignment: .leading ,spacing: 10.0){
            Text("스킬").font(.system(size: 20))
                .bold()
                Divider()
            
            HStack(alignment: .top, spacing: 30){
                VStack(alignment: .leading ,spacing: 10.0){
                    Text("- 맛있는 간식")
                    Text("- 👩🏻 짠나")
                    Text("- 👩🏻 짠나")
                }
//                    .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
//                    .border(Color.black ,width: 1)
                
            
                VStack(alignment: .leading ,spacing: 10.0){
                    Text("- 👩🏻 큰나")
                    Text("- 👩🏻 짠나")
                }
                .padding()
//                    .border(Color.black ,width: 1)
                
            }
//                .border(Color.black ,width: 1)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20)
            .fill(.pink)
            .opacity(0.2)
        )
    }
}

#Preview {
    SkillView()
}
