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
    private let defaultImage = "orc5"
    
    @State private var projectile: Entity? = nil
    
    var body: some View {
        ZStack {
            RealityView { content in
                if let scene = try? await Entity.load(named: "Scene", in: realityKitContentBundle) {
                    content.add(scene)
                    traverseEntities(in: scene)
                    
                } else {
                    print("Erro ao carregar a cena.")
                }
            }
            .gesture(TapGesture().targetedToAnyEntity().onEnded({ value in
                _ = value.entity.applyTapForBehaviors()
                let entityName = value.entity.name
                viewModel.handleTap(entityName: entityName)
            }))

            if viewModel.isTextVisible {
                GeometryReader { geometry in
                    VStack {
                        Spacer()
                        if let combination = viewModel.currentCombination,
                           let data = CombinationModel.combinationData[combination] {
                            Image(data.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                                .padding(.bottom, 20)

                            Text(data.message)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black.opacity(0.7))
                                .cornerRadius(10)
                                .transition(.opacity)
                                .onAppear {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                        withAnimation {
                                            viewModel.isTextVisible = false
                                        }
                                    }
                                }
                        

                        } else {
                            Image(defaultImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                                .padding(.bottom, 20)
                        }

                        Spacer()
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: 0, y: -geometry.size.height * 0.2)
                }
            }
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
