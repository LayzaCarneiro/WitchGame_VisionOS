//
//  ContentView.swift
//  TestePotion
//
//  Created by Taissa Vitoria Rodrigues de Paula on 07/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State private var enlarge = false

    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content
            if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
        .gesture(TapGesture().targetedToAnyEntity().onEnded({ value in
            _ = value.entity.applyTapForBehaviors()
        }))

    }
}

#Preview(windowStyle: .volumetric) {
    ContentView()
        .environment(AppModel())
}
