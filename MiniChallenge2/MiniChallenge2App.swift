//
//  MiniChallenge2App.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

@main
struct MiniChallenge2App: App {
    @State var projectModel = ProjectInfoClass()
    @State var offerModel = OffersClass()

    var body: some Scene {
        WindowGroup {
            Onboarding()
                .environmentObject(projectModel)
                .environmentObject(offerModel)
        }
    }
}
