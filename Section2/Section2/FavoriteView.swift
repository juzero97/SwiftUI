//
//  FavoriteView.swift
//  Section2
//
//  Created by 송주영 on 4/14/25.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        VStack(alignment: .leading ,spacing: 10.0){
            Text("좋아하는것").font(.system(size: 20).bold())
            Divider()
            Text("- 👩🏻 큰나")
            Text("- 👩🏻 짠나")
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20)
            .fill(.mint)
            .opacity(0.2))
    }
}

#Preview {
    FavoriteView()
}
