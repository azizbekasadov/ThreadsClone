//
//  LoginWithInstagram.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 19.10.2025.
//

import SwiftUI

struct LoginWithInstagramView: View {
    var body: some View {
        VStack {
            Image("Login/Pattern")
                .resizable()
                
            
            footerView
        }
        .ignoresSafeArea(edges: .top)
    }
    
    @ViewBuilder
    private var footerView: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Log in with Instagram")
                    .font(.subheadline)
                    .foregroundStyle(Color(uiColor: .systemGray))
                Text("your_username")
            }
            
            Spacer()
            
            Image("Login/insta")
                .resizable()
                .scaledToFit()
                .frame(width: 46, height: 46)
        }
        .padding(16)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(uiColor: .systemGray5), lineWidth: 1)
        }
        .padding(16)
    }
}

#Preview {
    LoginWithInstagramView()
}
