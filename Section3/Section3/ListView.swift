//
//  ListView.swift
//  Section3
//
//  Created by 송주영 on 5/8/25.
//

import SwiftUI

struct ListView: View {
    @Binding var words: [String]
    var body: some View {
        
      
        
        HStack {
            List {
                ForEach(words.reversed(), id: \.self) { word in
                    Text(word)
                        .font(.title2)
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    ListView()
}
