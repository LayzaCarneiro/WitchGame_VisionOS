//
//  ViewModel.swift
//  TestePotion
//
//  Created by Taissa Vitoria Rodrigues de Paula on 11/11/24.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var count = 0
    @Published var displayedText: String = ""
    @Published var isTextVisible: Bool = false
    @Published var clickedEntities: [String] = []
    
    private let combinationMessages = CombinationModel.combinationMessages
    
    func handleTap(entityName: String) {
        count += 1
        print("Clicou entidade: \(entityName), contador: \(count)")
        
        clickedEntities.append(entityName)
        let entityNames = clickedEntities.joined(separator: ", ")
        displayedText = "Você clicou nas entidades: \(entityNames)"
        
        if count == 3 {
            displayedText = generateCombinationText()
            isTextVisible = true
            reset()
        }
    }
    
    private func generateCombinationText() -> String {
        let clickedSet = Set(clickedEntities)
        
        if let message = combinationMessages[clickedSet] {
            return message
        }
        
        return "Combinação não reconhecida, tente novamente."
    }
    
    private func reset() {
        count = 0
        clickedEntities = []
    }
}

