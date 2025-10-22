//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 19.10.2025.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10, id: \.self) { user in
                    Grid {
                        GridRow {
                            UserCellView()
                        }
                        .padding(.vertical, 5)
                        
                        Divider()
                    }
                }
            }
            .padding()
        }
        .searchable(text: $searchText, prompt: "Search")
        .navigationTitle("Search")
    }

}

#Preview {
    NavigationStack {
        ExploreView()
    }
}

#Preview("ExploreView + MainTabView") {
    MainTabView()
}
