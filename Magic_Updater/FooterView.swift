//
//  FooterView.swift
//  Magic_Updater
//
//  Created by Andrea Esselman on 12/27/21.
//

import SwiftUI

struct FooterView: View {
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State private var isRecording = false
    @Binding var magic: MagicHistory
    
    var body: some View {
        ZStack{
            isRecording ?
            
            Button("Stop") {
                speechRecognizer.stopTranscribing()
                isRecording = false
                let newHistory = History(transcript: speechRecognizer.transcript)
                    magic.history.insert(newHistory, at: 0)
                       
            } :
            
            Button("Start Listening") {
                speechRecognizer.reset();
                speechRecognizer.transcribe();
                isRecording = true
            }
            
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView(magic: .constant(MagicHistory.sampleData[0]))
    }
}
