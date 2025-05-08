//
//  Todo.swift
//  Section4 TodoList
//
//  Created by 송주영 on 5/8/25.
//

import Foundation

class Todo {
    var Title :  String
    var isComplete : Bool
    var description : String
    
    init(title:String){
        self.Title = title
        self.isComplete = false
        self.description = ""
    }
}
