//
//  ContentView.swift
//  Section1
//
//  Created by 송주영 on 4/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        
        
        ZStack() {
           
            
            Circle()
                .fill(Color.indigo)
                .frame(height: 90)
               
        
            ZStack(alignment: .topTrailing) {
                Image(systemName: "bell.fill")
                    .font(.system(size: 40))

                Circle()
                    .fill(Color.red)
                    .frame(width: 10, height: 10)
            }
        }
        
        
      
        
    }
    
            
}

#Preview {
    ContentView()
}

