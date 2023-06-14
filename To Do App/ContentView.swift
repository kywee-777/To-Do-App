//
//  ContentView.swift
//  To Do App
//
//  Created by Kylie Nguyen on 6/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    @State var toDoItems: [ToDoItem] = []
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.title)
                Button("+") {
                    self.showNewTask = true
                }
            }
            .padding()
            Spacer()
            List {
                ForEach (toDoItems) { toDoItem in
                    Text(toDoItem.title)
                if toDoItem.isImportant == true {
                    Text("‼️" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                    }
                }
            }
        }
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
