//
//  PhotosView.swift
//  Section2
//
//  Created by 송주영 on 4/14/25.
//

import SwiftUI

struct PhotosView: View {
    var body: some View {
        ScrollView( .horizontal) {
            HStack {
                DogImageView(imageName: "dog2" , OverlayColor: Color.blue)
                DogImageView(imageName: "dog3", OverlayColor: Color.yellow)
                DogImageView(imageName: "dog4", OverlayColor: Color.red)
                
            }
            .padding()
        }
        .scrollIndicators(.hidden)
    }
    
    
    struct DogImageView: View {
        
        var imageName : String
        var OverlayColor : Color
        
        var body: some View {
           Image(imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .overlay(Rectangle().stroke(OverlayColor, lineWidth: 3))
        }
    }
}
        
    
    
    #Preview {
        PhotosView()
    }


