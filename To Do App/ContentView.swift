//
//  ContentView.swift
//  To Do App
//
//  Created by Kylie Nguyen on 6/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.title)
                Button(action: {
                }) {
                Text("+")
                }
                Text("hi")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
