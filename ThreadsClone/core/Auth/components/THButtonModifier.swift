//
//  THButtonModifier.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 17.10.2025.
//

import SwiftUI

struct THButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

extension View {
    func appButtonStyle() -> some View {
        modifier(THButtonModifier())
    }
}
