//
//  Note.swift
//  NotesApp Watch App
//
//  Created by Oscar David Myerston Vega on 22/02/23.
//

import SwiftUI

struct Note: Codable, Hashable, Identifiable {
    var id: UUID
    var title: String
    var creationDate: String

    init(title: String) {
        self.id = UUID()
        self.title = title

        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium

        self.creationDate = dateFormatter.string(from: date)
    }
}
