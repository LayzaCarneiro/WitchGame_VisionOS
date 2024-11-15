////
////  ContentView.swift
////  TestePotion
////
////  Created by Taissa Vitoria Rodrigues de Paula on 07/11/24.
////
//
//import SwiftUI
//import RealityKit
//import RealityKitContent
//
//struct ContentView: View {
//    @State private var showText = false
//    @State private var clickedEntities: Set<Entity> = []
//    @State private var count = 0
//
//    var body: some View {
//        RealityView { content in
//            if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
//                scene.transform.scale = SIMD3<Float>(0.82, 0.82, 0.82)
//                content.add(scene)
//            }
//        }
//        .gesture(TapGesture().targetedToAnyEntity().onEnded({ value in
//            if !clickedEntities.contains(value.entity) {
//                _ = value.entity.applyTapForBehaviors()
//                print(value.entity.name)
//            }
//            handleTap(entity: value.entity)
//        }))
//        
//        if showText {
//            Text("Hello, World!")
//                .font(.headline)
//                .padding()
//                .background(Color.white.opacity(0.8))
//                .cornerRadius(10)
//        }
//    }
//    
//    
//    private func handleTap(entity: Entity) {
//        if !clickedEntities.contains(entity) {
//            clickedEntities.insert(entity)
//            count += 1
//            print("clicou entidade, contador: \(count)")
//            
//        } else {
//            print("entidade já clicada, contador: \(count)")
//        }
//        
//        if count >= 3 {
//            showText = true
//        }
//    }
//}
//
//#Preview(windowStyle: .volumetric) {
//    ContentView()
//        .environment(AppModel())
//}
