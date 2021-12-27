//
//  ContentView.swift
//  Magic_Updater
//
//  Created by Andrea Esselman on 12/21/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @Binding var magic: MagicHistory
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State private var isRecording = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(magic.theme.mainColor)
            VStack {
                HeaderView(theme: magic.theme)
                RecordView(isRecording: isRecording, theme: magic.theme)
                // OutputView()
                FooterView(magic: .constant(MagicHistory.sampleData[0]))
            }
        }
        .padding()
        .foregroundColor(magic.theme.accentColor)
//        .onAppear {
//            speechRecognizer.reset()
//            speechRecognizer.transcribe()
//            isRecording = true
//        }
//        .onDisappear {
//            speechRecognizer.stopTranscribing()
//            isRecording = false
//            let newHistory = History(transcript: speechRecognizer.transcript)
//            magic.history.insert(newHistory, at: 0)
//        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(magic: .constant(MagicHistory.sampleData[0]))
    }
}
