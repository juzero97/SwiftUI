import SwiftUI

struct ContentView: View {
    
    let title = "끝말잇기게임"  // 화면 제목
    
    @State private var nextWord: String = ""
    @State private var words: [String] = ["Apple", "Elsa", "Aladin"]
    @State private var showAlert: Bool = false
    
    
    var body: some View {
        VStack {
            // 제목 표시
            TitleView() // 상단 약간의 여백
            // 단어 입력창 + 확인 버튼
            InputView(nextWord : $nextWord ,words : $words ,showAlert:$showAlert)
            // 단어 목록 리스트 표시
            ListView(words : $words)
            Spacer() // 아래 여백
        }
    }
}

#Preview {
    ContentView() // 미리보기용
}
