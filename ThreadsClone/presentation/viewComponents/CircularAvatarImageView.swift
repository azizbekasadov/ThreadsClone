//
//  CircularAvatarImageView.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 22.10.2025.
//

import SwiftUI

struct CircularAvatarImageView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularAvatarImageView(imageName: "Sample/daenerys")
}
