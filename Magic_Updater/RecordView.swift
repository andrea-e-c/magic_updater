//
//  r.swift
//  Magic_Updater
//
//  Created by Andrea Esselman on 12/21/21.
//

import SwiftUI

struct RecordView: View {
    let isRecording: Bool
    let theme: Theme
    
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                VStack {
                    Text(isRecording ? "Recording" : "")
                    Image(systemName: isRecording ? "mic" : "mic.slash")
                        .font(.title)
                        .padding(.top)
                        .accessibilityLabel(isRecording ? "with transcription" : "without transcription")
                }
                .accessibilityElement(children: .combine)
                .foregroundStyle(theme.accentColor)
                .padding(.horizontal)
            }
    }
}


struct MeetingTimerView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView(isRecording: true, theme: .yellow)
    }
}
