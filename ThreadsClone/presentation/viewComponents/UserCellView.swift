//
//  UserCellView.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 22.10.2025.
//

import SwiftUI

struct UserCellView: View {
    var body: some View {
        HStack {
            CircularAvatarImageView(imageName: "Sample/daenerys")
            
            VStack(alignment: .leading) {
                Text("daenerys.targaryen1")
                    .fontWeight(.semibold)
                
                Text("Daenerys Targaryen")
            }
            .font(.footnote)
            .lineLimit(1)
            
            Spacer()
            
            FollowingButton(
                data: .init(state: .idle, title: "Follow")
            )
        }
    }
}

#Preview {
    UserCellView()
}
