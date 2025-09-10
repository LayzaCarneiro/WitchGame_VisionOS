//  Model.swift
//  TestePotion
//
//  Created by Taissa Vitoria Rodrigues de Paula on 11/11/24.
//

import Foundation

struct EntityModel {
    let name: String
}

struct CombinationModel {
    static let combinationData: [Set<String>: (message: String, imageName: String)] = [
        
        // Combinações simples (poções comuns)
        Set(["SM_potionoOutter_01_M_glass_0", "botle_low_Botle_0", "Potion_of_Healing_Glass_0"]):
            ("Você criou a Poção da Cura Suprema, restaurando forças de maneira incrível!",
             "fairy2"),
        Set(["SM_potionoOutter_01_M_glass_0", "Potion_of_Healing_Glass_0", "Potion_1_low_Checker_0"]): (
            "Encontrou uma combinação poderosa, que fortalece a cura!",
            "gnomo4"),
        Set(["defaultMaterial", "Object_1", "Life_low_Life_0"]): (
            "A Poção da Cura Avançada foi criada, com poder revitalizante!",
            "fairy1"),
        Set(["Magic_Potion_Magic_Potion1_0", "CrystalOne_LP_Material__1_0", "Life_low_Life_0"]): (
            "Criou uma Poção Misteriosa, com efeitos desconhecidos!",
            "fairy2"),
        Set(["Potion_of_Healing_Glass_0", "Potion_1_low_Checker_0", "Life_low_Life_0"]): (
            "A Poção Curativa foi formada, trazendo um poder imenso de regeneração!",
            "fairy1"),
        
        //TESTES
        // 3 primeiros
        Set(["Potion", "Mushroom_bottle", "Potion_Of_Healing_Dungeons_and_Dragons_2"]): (
            "A Poção Curativa foi formada, trazendo um poder imenso de regeneração!",
            "fairy1"),
       //2 da 2 coluna + ultimo
        Set(["Potions_Bottle", "Mana_Potion", "Life_Potion_Stylized"]): (
            "A Poção Curativa foi formada, trazendo um poder imenso de regeneração!",
            "fairy2"),
        // 3 ultimos - ok
        Set(["Magic_Potion", "Crystal", "Life_Potion_Stylized"]): (
            "A Poção Curativa foi formada, trazendo um poder imenso de regeneração!",
            "fairy2"),
        // 3 esquerda
        Set(["Potion", "Potions_Bottle", "Magic_Potion"]): (
            "A Poção Curativa foi formada, trazendo um poder imenso de regeneração!",
            "elfo3"),
        // 3 direita
        Set(["potion1", "Mana_Potion", "Life_Potion_Stylized"]): (
            "A Poção Curativa foi formada, trazendo um poder imenso de regeneração!",
            "gnomo4"),

        // 3 do meio
        Set(["Mushroom_bottle", "Potion_of_Healing_Glass_0", "Crystal"]): (
            "A Poção Curativa foi formada, trazendo um poder imenso de regeneração!",
            "orc5"),
        // cruzado
        Set(["Potion", "defaultMaterial", "Crystal"]): (
            "A Poção Curativa foi formada, trazendo um poder imenso de regeneração!",
            "gnomo4"),
        
        // Combinações intermediárias (poções de efeito mais complexo)
        Set(["SM_potionoOutter_01_M_glass_0", "Potion_of_Healing_Glass_0", "defaultMaterial"]): (
            "A Poção da Cura Perfeita foi criada, ideal para restaurar energias!",
            "elfo3"),
        Set(["SM_potionoOutter_01_M_glass_0", "Potion_1_low_Checker_0", "defaultMaterial"]): (
            "Combinou ingredientes raros, criando uma Poção do Poder Secreto!",
            "gnomo4"),
        Set(["Central_Rope_Central_Rope_0", "Potion_of_Healing_Glass_0", "Potion_1_low_Checker_0"]): (
            "A Poção da Força Misteriosa foi formada, com poderes de proteção!",
            "gnomo4"),
        Set(["Central_Rope_Central_Rope_0", "Potion_1_low_Checker_0", "defaultMaterial"]): (
            "Criou a Poção da Conexão Elementar, unindo forças mágicas!",
            "elfo2"),
        Set(["Central_Rope_Central_Rope_0", "Life_low_Life_0", "Potion_of_Healing_Glass_0"]): (
            "Combinou forças vitais, criando a Poção da Cura Vital!",
            "fairy2"),

        // Combinações avançadas (poções raras e poderosas)
        Set(["Central_Rope_Central_Rope_0", "CrystalOne_LP_Material__1_0", "Life_low_Life_0"]): (
            "Você criou a Poção da Magia Eterna, que traz um poder imensurável!",
            "fairy1"),
        Set(["Central_Rope_copy1_Central_Rope_copy1_0", "Potion_1_low_Checker_0", "defaultMaterial"]): (
            "Formou a Poção da Alma Indomável, com uma força ilimitada!",
            "fairy1"),
        Set(["CrystalOne_LP_Material__1_0", "Potion_of_Healing_Glass_0", "defaultMaterial"]): (
            "Combinou a Poção da Energia Mística, poderosa e rara!",
            "fairy1"),
        Set(["Life_low_Life_0", "Potion_1_low_Checker_0", "defaultMaterial"]): (
            "Criou a Poção da Força Vital, que restaura a vida e a energia!",
            "fairy1")
    ]
}
