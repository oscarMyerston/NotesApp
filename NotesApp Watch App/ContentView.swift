//
//  ContentView.swift
//  NotesApp Watch App
//
//  Created by Oscar David Myerston Vega on 22/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Add Note ＋", destination: AddNote())
                    .foregroundColor(Color("NoteColor"))
                NavigationLink("List Notes ䷉", destination: ListNote())
            }.navigationTitle("Notes APP")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
