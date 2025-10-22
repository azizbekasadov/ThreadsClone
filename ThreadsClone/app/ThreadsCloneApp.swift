//
//  ThreadsCloneApp.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 16.10.2025.
//

import SwiftUI
import SwiftData

@main
struct ThreadsCloneApp: App {
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .task {
                    initGlobalStateOfUI()
                }
        }
    }
    
    private func initGlobalStateOfUI() {
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.backgroundColor = UIColor.systemBackground
        navigationAppearance.setBackIndicatorImage(
            UIImage(systemName: "arrow.backward"),
            transitionMaskImage: nil
        )
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.shadowColor = UIColor.clear
        navigationAppearance.shadowImage = UIImage()
        navigationAppearance.backgroundEffect = UIBlurEffect(style: .dark)
        
        UINavigationBar.appearance().barTintColor = UIColor.systemBackground
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = false
        
        UINavigationBar().scrollEdgeAppearance = navigationAppearance
        UINavigationBar().standardAppearance = navigationAppearance
        UINavigationBar().compactAppearance = navigationAppearance
        UINavigationBar().compactScrollEdgeAppearance = navigationAppearance
    }
}
