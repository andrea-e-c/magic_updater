//
//  History.swift
//  Magic_Updater
//
//  Created by Andrea Esselman on 12/21/21.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var transcript: String?

    init(id: UUID = UUID(), date: Date = Date(), transcript: String? = nil) {
        self.id = id
        self.date = date
        self.transcript = transcript
    }
}
