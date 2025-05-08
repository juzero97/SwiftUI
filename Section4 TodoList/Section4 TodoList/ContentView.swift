//
//  ContentView.swift
//  Section4 TodoList
//
//  Created by 송주영 on 5/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var todoList : [Todo] = [
            Todo(title : ""),
            Todo(title : ""),
            Todo(title : "")
        ]
        EmptyView()
        
        NavigationStack{
            List{
                ForEach(todoList){Todo in
                    HStack{
                        Image(systemName: "circle").foregroundStyle(Color.green)
                        Text("투두")
                        
                        NavigationLink {
                            Text("") //넘어간 화면창 뷰
                        } label: {
                            Text("") //버튼처럼 보이는 뷰
                        }
                    }
                }
                
                
            }
            .navigationTitle("TodoList")
        }
    }
}

#Preview {
    ContentView()
}
