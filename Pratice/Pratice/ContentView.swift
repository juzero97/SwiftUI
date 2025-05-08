//
//  ContentView.swift
//  Pratice
//
//  Created by 송주영 on 5/7/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var show : String = ""
    var body: some View {
        VStack {
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                .sheet()
            }
            .padding()
            
        }
        
        .background(RoundedRectangle(cornerRadius: 20)
            .fill(.mint)
            .opacity(0.05))
        
        
    }
}

#Preview {
    ContentView()
}
