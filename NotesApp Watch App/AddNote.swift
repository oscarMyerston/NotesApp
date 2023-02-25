//
//  AddNote.swift
//  NotesApp Watch App
//
//  Created by Oscar David Myerston Vega on 22/02/23.
//

import SwiftUI

struct AddNote: View {

    @State private var text = ""
    @State private var notes = [Note]()
    @Environment(\.presentationMode) var presentation

    var body: some View {
        ScrollView {
            VStack {
                TextField("Title", text: $text)
                Button("Add Note") {
                    guard text.isEmpty == false else{
                        return
                    }

                    let note = Note(title: text)
                    notes.append(note)
                    Tools.shared.save(array: notes)
                    text = ""
                    presentation.wrappedValue.dismiss() // Navigate to content view
                }.foregroundColor(Color("NoteColor"))
            }
        }.onAppear(perform: {
            self.notes = Tools.shared.load()
        })
     }
    
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
