//
//  ContentView.swift
//  Section2
//
//  Created by 송주영 on 4/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack {
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
            //첫번째카드
            VStack(alignment: .leading ,spacing: 10.0){
                Text("좋아하는것").font(.system(size: 20).bold())
                Divider()
                Text("- 👩🏻 큰나")
                Text("- 👩🏻 짠나")
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20)
                .fill(.mint)
                .opacity(0.2)
            )
            
            //두번쨰 카드
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
            
            ScrollView(.horizontal) {
                HStack{
                    Image("dog2")
                        .resizable()
                        .frame(width: 150 ,height: 150)
                        .overlay(Rectangle().stroke(Color.blue,lineWidth:3))
                    Image("dog3")
                        .resizable()
                        .frame(width: 150 ,height: 150)
                        .overlay(Rectangle().stroke(Color.blue,lineWidth:3))
                    Image("dog4")
                        .resizable()
                        .frame(width: 150 ,height: 150)
                        .overlay(Rectangle().stroke(Color.blue,lineWidth:3))
                }
                .padding()
            }
            .scrollIndicators(.hidden)
                   

            
         
            
            
            
        }

        .padding()

    }
        
}

#Preview {
    ContentView()
}
