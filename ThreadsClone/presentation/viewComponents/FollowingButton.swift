//
//  FollowingButton.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 22.10.2025.
//

import SwiftUI

struct FollowingButtonData {
    let id: UUID
    let state: FollowingButton.ButtonState
    let title: String
    
    init(
        id: UUID = UUID(),
        state: FollowingButton.ButtonState,
        title: String
    ) {
        self.id = id
        self.state = state
        self.title = title
    }
}

struct FollowingButton: View {
    enum ButtonState {
        case idle
        case disabled
    }
    
    let data: FollowingButtonData
    
    var body: some View {
        Button {
            
        } label: {
            Text(data.title)
                .foregroundStyle(.black)
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.vertical, 5)
                .padding(.horizontal)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .background {
                    RoundedRectangle(cornerRadius: 10) .stroke(Color(uiColor: .systemGray4), lineWidth: 1)
                }
                
        }
        .frame(width: 100)
    }
}

#Preview {
    FollowingButton(
        data: .init(state: .idle, title: "Follow")
    )
}
