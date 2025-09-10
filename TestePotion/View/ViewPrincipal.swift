//
//  ImmersiveView.swift
//  TestePotion
//
//  Created by Taissa Vitoria Rodrigues de Paula on 07/11/24.
//
import SwiftUI
import RealityKit
import RealityKitContent

struct ViewPrincipal: View {
    @StateObject private var viewModel = ContentViewModel()
    var count = 0
    private let defaultImage = "orc5"
    
    @State private var projectile: Entity? = nil
    
    var body: some View {
        ZStack {
             RealityView { content in
                 if let scene = try? await Entity.load(named: "Scene", in: realityKitContentBundle) {
                     let children = scene.children[0].children
                     
                     for child in children {
                         switch child.name {
                         case "Crystal":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         case "Potion":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         case "potion1":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         case "Mana_Potion":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         case "Potions_Bottle":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         case "Mushroom_bottle":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         case "Life_Potion_Stylized":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         case "Potion_Of_Healing_Dungeons_and_Dragons_2":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         case "Object_1":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         case "Magic_Potion":
                             child.components.set(
                                HoverEffectComponent(.highlight(.init(color: .red, strength: 2)))
                             )
                         default:
                             break
                         }
                     }
                                     
                     scene.transform.scale = SIMD3<Float>(2.0, 2.0, 2.0)
                     content.add(scene)
                }
                 
                 else {
                    print("Erro ao carregar a cena.")
                }
                 
                func showClick(entityName: String) {
                    Text("(Clicou na entidade: \(entityName), contador: \(viewModel.count))")
                }
            }
            .gesture(TapGesture().targetedToAnyEntity().onEnded({ value in
                if !viewModel.clickedEntities.contains(value.entity.name) {
                    _ = value.entity.applyTapForBehaviors()
                    let entityName = value.entity.name
                    print(entityName)
                    viewModel.handleTap(entityName: entityName)
                }
            }))
            
            if viewModel.isTextVisible {
                
                GeometryReader { geometry in
                    VStack {
                        Spacer()
                        if let combination = viewModel.currentCombination,
                           let data = CombinationModel.combinationData[combination] {
                            VStack {
                                Image(data.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                            
                            Text(data.message)
                                .font(Font.custom("KCObraLetraRegular", size: 18))
                                .fontWeight(.bold)
                                .cornerRadius(10)
//                                .border(Color.witch, width: 2)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black.opacity(0.7))
                                .transition(.opacity)
                        }
                            .padding3D(.back, -130)
                            .padding3D(.top, 200)
                                
                                .onAppear {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                        withAnimation {
                                            viewModel.isTextVisible = false
                                        }
                                    }
                                }
                            
                        } else {
                            VStack {
                                Image(defaultImage)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                                
                                Text("Você criou a Poção da Força Suprema, restaurando forças de maneira incrível!")
                                    .frame(width:300, height: 100)
                                    .cornerRadius(10)
                                    .font(Font.custom("KCObraLetraRegular", size: 18))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .background(Color.black.opacity(0.7))
                                    .transition(.opacity)
                            }
                                .padding3D(.back, -130)
                                .padding3D(.top, 200)
                                .onAppear {
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                        withAnimation {
                                            viewModel.isTextVisible = false
                                        }
                                    }
                                    
                                }
                            
                        }
                        Spacer()

                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
//                    .offset(x: 0, y: -geometry.size.height * 0.2)
                }
            }
            
            VStack {
                Text("Combine 3 poções e descubra qual poção você consegue fazer!\n")
                Text("Você combinou: \(viewModel.count) poções")
            }
                    .font(Font.custom("KCObraLetraRegular", size: 30))
                
//                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.7))
                .cornerRadius(10)
                .padding3D(.back, -550)
                .padding3D(.bottom, 300)

            
        }
      
    }
    
    private func traverseEntities(in entity: Entity) {
        print("Entidade: \(entity.name)")

        for child in entity.children {
            traverseEntities(in: child)
        }
    }
}


#Preview(windowStyle: .volumetric) {
    ViewPrincipal()
}
