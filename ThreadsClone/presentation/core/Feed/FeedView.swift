//
//  FeedView.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 19.10.2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            Image("Common/applogo")
                .resizable()
                .scaledToFit()
                .frame(height: 42)
                .padding(.bottom, 10)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0..<10) { item in
                        ThreadCellView(data: .danySample)
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .refreshable {
                
            }
        }
    }
}

#Preview {
    FeedView()
}
