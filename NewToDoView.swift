//
//  NewToDoView.swift
//  To Do App
//
//  Created by Kylie Nguyen on 6/13/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask: Bool
    
    
    var body: some View {
        VStack(spacing: 15.0) {
            Text("Add a new task")
            
            TextField("Enter the task description", text: $title)
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }) {
                Text("Add")
//
            }
        }
    }
    
    
    struct NewToDoView_Previews: PreviewProvider {
        static var previews: some View {
            NewToDoView(title: "", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true))
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {

        let task = ToDoItem(title: title, isImportant: isImportant)
        toDoItems.append(task)
    }
}
