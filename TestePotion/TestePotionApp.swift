//
//  TestePotionApp.swift
//  TestePotion
//
//  Created by Taissa Vitoria Rodrigues de Paula on 07/11/24.
//

import SwiftUI

@main
struct TestePotionApp: App {

    @State private var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            ViewPrincipal()
                .environment(appModel)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 200, height: 200, depth: 200, in: .meters)

        ImmersiveSpace(id: appModel.immersiveSpaceID) {
            ImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                }
        }
        .immersionStyle(selection: .constant(.mixed), in: .mixed)
    }
}
