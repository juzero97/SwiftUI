//
//  ProfileView.swift
//  Section2
//
//  Created by 송주영 on 4/14/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        HStack {
            Image("dog1")
                .resizable()
                .frame(width: 150.0, height: 150.0)
                .clipShape(Circle())
                .overlay{
                    (Circle().stroke(Color.primary,lineWidth: 3))
                }
            
            
            //.leading 왼쪽정렬
            VStack(alignment: .leading){
                Text("재롱이")
                Text("말티즈")
                Text("20xx년생")
            }
            //Padding() 상하좌우 여백 10
            .padding(.leading,20) //오른쪽여백,크기
            .font(.system(size: 20))
            
            
        }
        .padding()
        
    }
}

#Preview {
    ProfileView()
}
