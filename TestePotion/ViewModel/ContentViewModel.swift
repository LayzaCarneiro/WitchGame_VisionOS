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
    @Published var currentCombination: Set<String>?

    private let combinationData = CombinationModel.combinationData

    func handleTap(entityName: String) {
        count += 1
        print("Clicou na entidade: \(entityName), contador: \(count)")

        clickedEntities.append(entityName)
        let entityNames = clickedEntities.joined(separator: ", ")
        displayedText = "Você clicou nas entidades: \(entityNames)"
        
        if count >= 3 {
            generateCombination()
        }
    }

    func generateCombination() {
        let clickedSet = Set(clickedEntities)
        
        if let data = combinationData[clickedSet] {
            displayedText = data.message
            currentCombination = clickedSet
            isTextVisible = true
        } else {
            displayedText = "Tente outras combinações"
            currentCombination = nil
            isTextVisible = true
        }
        
        
    }


    private func reset() {
        count = 0
        clickedEntities = []
    }
}
