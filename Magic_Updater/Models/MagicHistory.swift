//
//  MagicHistory.swift
//  Magic_Updater
//
//  Created by Andrea Esselman on 12/21/21.
//

import Foundation

struct MagicHistory: Identifiable, Codable {
    let id: UUID
    var title: String
    var theme: Theme
    var history: [History] = []
    
    init(id: UUID = UUID(), title: String, theme: Theme) {
        self.id = id
        self.title = title
        self.theme = theme
    }
}

extension MagicHistory {    
    struct Data {
        var title: String = ""
        var theme: Theme = .seafoam
    }
    
    var data: Data {
        Data(title: title, theme: theme)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        theme = data.theme
    }
    
    init(data: Data) {
        id = UUID()
        title = data.title
        theme = data.theme
    }
}

extension MagicHistory {
    static let sampleData: [MagicHistory] =
    [
        MagicHistory(title: "Design", theme: .yellow),
        MagicHistory(title: "App Dev", theme: .orange),
        MagicHistory(title: "Web Dev", theme: .poppy)
    ]
}

