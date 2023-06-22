//
//  ContentView.swift
//  TextToSpeech
//
//  Created by Jason Rich Darmawan Onggo Putra on 18/06/23.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @StateObject var textToSpeech = TextToSpeech()
    
    @State private var name : String = ""
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onTapGesture {
            textToSpeech.speak(string: "The quick brown fox jumped over the lazy dog.")
        }
//        VStack {
//            TextField("Name", text: $name)
//                .padding()
//            
//            Button("Greet") {
//                let utterance = AVSpeechUtterance(string: "Hello \(name)")
//                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
//                utterance.rate = 0.3
//                
//                let synthesizer = AVSpeechSynthesizer()
//                synthesizer.speak(utterance)
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
