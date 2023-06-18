//
//  TextToSpeech.swift
//  TextToSpeech
//
//  Created by Jason Rich Darmawan Onggo Putra on 18/06/23.
//

import Speech

class TextToSpeech: ObservableObject {
    private let voice_: AVSpeechSynthesisVoice?
    private let synthesizer_: AVSpeechSynthesizer?
    
    init() {
        // Retrieve the default voice for the user's locale.
        voice_ = AVSpeechSynthesisVoice(language: AVSpeechSynthesisVoice.currentLanguageCode())
        
        // Create a speech synthesizer.
        synthesizer_ = AVSpeechSynthesizer()
    }
    
    public func speak(string: String) {
        // Create an utterance.
        let utterance = AVSpeechUtterance(string: string)

        // Adjust the rate to make the speech slower.
        utterance.rate = 0.5
        
        // Adjust the pitch to make the speech sound more natural.
        utterance.pitchMultiplier = 1.0
        
        // Set a short pause after each utterance for a more natural speech pattern.
        utterance.postUtteranceDelay = 0.5
        
        // Set the volume to a comfortable level.
        utterance.volume = 1.0
        
        // Assign the voice to the utterance.
        utterance.voice = voice_
        
        synthesizer_?.speak(utterance)
    }
}
