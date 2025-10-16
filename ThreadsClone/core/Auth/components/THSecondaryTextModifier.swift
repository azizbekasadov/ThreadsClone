//
//  THFootnoteTextModifier.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 17.10.2025.
//

import Foundation
import SwiftUI

struct THSecondaryTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .fontWeight(.semibold)
            .padding([.top, .bottom])
            .frame(maxWidth: .infinity, alignment: .trailing)
            .foregroundStyle(Color.black)
    }
}

extension View {
    func secondaryTextModifier() -> some View {
        modifier(THSecondaryTextModifier())
    }
}
