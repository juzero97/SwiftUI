//
//  ContentView.swift
//  Section1
//
//  Created by 송주영 on 4/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        HStack{
            Rectangle()
                .frame(width: 30.0, height: 40.0)
                .foregroundStyle(.teal)
                
            Spacer()
            
            VStack{
                Rectangle()
                    .frame(width: 30.0, height: 40.0)
                    .foregroundStyle(.teal)
                Spacer()
            }
            .background(Color.brown.opacity(2))
        }
        .padding()
        .background(Color.yellow.opacity(1))
      
       
        
        HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 40, height: 40)

            VStack(alignment: .leading) {
                Text("사용자 이름")
                    .font(.headline)
                Text("메시지 내용이 여기에 표시됩니다.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .background(Color.yellow.opacity(0.3))
        .padding()
    
      
        
        
        HStack {
            Image(systemName: "gear")
                .frame(width: 30)
            Text("설정")
            Spacer()
            Image(systemName: "chevron.right")
        }
        .background(Color.red.opacity(0.3))
        .padding()
        
        VStack {
            Spacer()
            Button("확인") {
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal, 20)
            .padding(.bottom, 30)
        }
        
       
        
    }
    
            
}

#Preview {
    ContentView()
}

