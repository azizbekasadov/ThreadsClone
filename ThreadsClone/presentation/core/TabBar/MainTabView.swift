//
//  MainTabView.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 17.10.2025.
//

import SwiftUI

struct MainTabView: View {
    @State private var selection: Int = 0
    
    private let viewRegistry: [String: () -> AnyView] = [
        "Home": {
            AnyView(
                FeedView()
            )
        },
        "Friends": {
            AnyView(
                NavigationStack {
                    ExploreView()
                }
            )
        },
        "Write": {
            AnyView(
                WriteView()
            )
        },
        "Likes": {
            AnyView(
                NavigationStack {
                    ActivityView()
                }
            )
        },
        "Profile": {
            AnyView(
                ProfileView()
            )
        },
    ]
    
    private let tabBarItems: [TabBarItemData] = [
        .init(
            title: "Home",
            image: "TabBar/default/feed",
            selectedImage: "TabBar/selected/feed"
        ),
        .init(
            title: "Friends",
            image: "TabBar/default/explore",
            selectedImage: "TabBar/selected/explore"
        ),
        .init(
            title: "Write",
            image: "TabBar/default/write",
            selectedImage: "TabBar/selected/write"
        ),
        .init(
            title: "Likes",
            image: "TabBar/default/like",
            selectedImage: "TabBar/selected/like"
        ),
        .init(
            title: "Profile",
            image: "TabBar/default/account",
            selectedImage: "TabBar/selected/account"
        ),
    ]
    
    var body: some View {
        Group {
            if #available(iOS 18.0, *) {
                MainContentView()
                    .tabViewStyle(.tabBarOnly)
            } else {
                MainContentView()
            }
        }
        .id("main_tabbar_view")
    }
    
    @ViewBuilder
    private func MainContentView() -> some View {
        TabView(selection: $selection) {
            ForEach(0..<tabBarItems.count, id:\.self) { index in
                let tab = tabBarItems[index]
                viewRegistry[tab.title]?()
                    .mainTabBarItem(tab, isSelected: selection == index)
                    .onAppear { selection = index }
                    .tag(index)
            }
        }
        .background(.white)
        .tint(.white)
        .scrollEdgeEffectStyle(.hard, for: .bottom)
        .defaultAdaptableTabBarPlacement(.tabBar)
        .tabBarMinimizeBehavior(.onScrollUp)
    }
}

#Preview {
    MainTabView()
}
