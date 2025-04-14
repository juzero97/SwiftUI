import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack {
            ProfileView()
            FavoriteView()
            SkillView()
            PhotosView()
        }
        .padding()
    }
        
}

#Preview {
    ContentView()
}
