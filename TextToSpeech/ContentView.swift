//
//  ContentView.swift
//  TextToSpeech
//
//  Created by Jason Rich Darmawan Onggo Putra on 18/06/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var textToSpeech = TextToSpeech()
    
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
