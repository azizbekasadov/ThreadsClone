//
//  THTextFieldModifier.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 17.10.2025.
//

import SwiftUI

struct THTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding(12)
            .background(Color(uiColor: .systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

extension View {
    func appTextFieldStyle() -> some View {
        modifier(THTextFieldModifier())
    }
}
