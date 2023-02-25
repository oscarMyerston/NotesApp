//
//  ListNote.swift
//  NotesApp Watch App
//
//  Created by Oscar David Myerston Vega on 24/02/23.
//

import SwiftUI

struct ListNote: View {
    @State var notes: [Note] = [Note]()
    var body: some View {
        
        VStack {
            Text("Notes: \(self.notes.count)")
            List {
                ForEach(Array(zip(notes.indices, notes)), id: \.1) { idx, note in
                    
                    NavigationLink(destination: DetailNote(note: note), label: {
                        Text("\(note.title)")
                            .lineLimit(1)
                            .foregroundColor(.black)
                        
                    }).listRowBackground(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("NoteColor"))
                    )
                    
                }.onDelete(perform: self.delete)
            }
        }.onAppear(perform: {
            self.notes = Tools.shared.load()
        })
    }
    
    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
        }
        Tools.shared.save(array: notes)
    }
}

struct ListNote_Previews: PreviewProvider {
    static var previews: some View {
        ListNote()
    }
}
