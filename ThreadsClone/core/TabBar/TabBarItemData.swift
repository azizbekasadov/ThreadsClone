//
//  TabBarItemData.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 17.10.2025.
//

import SwiftUI

struct TabBarItemData: Identifiable {
    let id: String
    let title: String
    let image: String
    let selectedImage: String
    let shouldBeRenderedOriginal: Bool
    
    init(
        id: String = UUID().uuidString,
        title: String,
        image: String,
        selectedImage: String,
        shouldBeRenderedOriginal: Bool = true
    ) {
        self.id = id
        self.title = title
        self.image = image
        self.selectedImage = selectedImage
        self.shouldBeRenderedOriginal = shouldBeRenderedOriginal
    }
}

struct MainTabBarItem: ViewModifier {
    let data: TabBarItemData
    let isSelected: Bool
    
    func body(content: Content) -> some View {
        content
            .tabItem {
                VStack {
                    Image(isSelected ? data.selectedImage : data.image)
                        .renderingMode(data.shouldBeRenderedOriginal ? .original : .template)
                }
                .id(data.id)
            }
    }
}

extension View {
    func mainTabBarItem(_ data: TabBarItemData, isSelected: Bool = false) -> some View {
        modifier(MainTabBarItem(data: data, isSelected: isSelected))
    }
}
