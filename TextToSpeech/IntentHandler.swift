////
////  IntentHandler.swift
////  TextToSpeech
////
////  Created by Martinus Andika Novanawa on 20/06/23.
////
//
//import UIKit
//import Intents
//
//class IntentHandler: NSObject {
//    
//    private var currentRecipe: Recipe?
//    weak var nextStepProvider: NextStepProviding?
//    
//    init(currentRecipe: Recipe? = nil, nextStepProvider: NextStepProviding? = nil) {
//        self.currentRecipe = currentRecipe
//        self.nextStepProvider = nextStepProvider
//    }
//    
//    private func recipe(for intent: showDirectionsIntent) -> Recipe? {
//        return currentRecipe != nil ? currentRecipe : intent.recipe
//    }
//    
//}
//
//protocol NextStepProviding: NSObject {
//    
//    var intentHandler: IntentHandler { get }
//    
//    @discardableResult
//    func nextStep(recipe: Recipe) -> ShowDirectionsIntentResponse
//}
