//
//  Model.swift
//  TestePotion
//
//  Created by Taissa Vitoria Rodrigues de Paula on 11/11/24.
//

import Foundation

struct EntityModel {
    let name: String
//    UIIImagge[named:fairy1 ]
}

struct CombinationModel {
    static let combinationData: [Set<String>: (message: String, imageName: String)] = [
        Set(["SM_potionoOutter_01_M_glass_0", "Potion_of_Healing_Glass_0", "Potion_1_low_Checker_0"]): (
            "Você encontrou uma combinação poderosa entre SM_potionoOutter_01_M_glass_0, Potion_of_Healing_Glass_0 e Potion_1_low_Checker_0!",
            "fairy1"),
        Set(["Potion_1_low_Checker_0", "Potion_of_Healing_Glass_0", "defaultMaterial"]):
            ("Potion_1_low_Checker_0, Potion_of_Healing_Glass_0 e defaultMaterial criaram algo novo e incrível!",
             "fairy2"),
        Set(["SM_potionoOutter_01_M_glass_0", "Potion_of_Healing_Glass_0", "defaultMaterial"]): ("SM_potionoOutter_01_M_glass_0, Potion_of_Healing_Glass_0 e defaultMaterial fazem a combinação perfeita!",
            "elfo3"),
        Set(["SM_potionoOutter_01_M_glass_0", "Potion_1_low_Checker_0", "defaultMaterial"]): ("SM_potionoOutter_01_M_glass_0,Potion_1_low_Checker_0 e defaultMaterial estão ligados por uma força especial!", "gnomo4")
    ]
}



