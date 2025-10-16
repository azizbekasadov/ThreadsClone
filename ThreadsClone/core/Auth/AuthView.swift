//
//  AuthView.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 17.10.2025.
//

import SwiftUI

struct AuthView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                LogoView()
                TextFieldsView()
                ForgotPasswordView()
                LoginButton()
                
                Spacer()
                
                Divider()
                FooterView()
            }
            .padding(.horizontal, 28)
        }
    }
    
    @ViewBuilder
    private func TextFieldsView() -> some View {
        VStack {
            TextField("Enter your email", text: $email)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .appTextFieldStyle()
            
            SecureField("Enter your password", text: $email)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .appTextFieldStyle()
        }
    }
    
    @ViewBuilder
    private func FooterView() -> some View {
        NavigationLink {
            Text("Registration view")
        } label: {
            HStack(alignment: .center, spacing: 3) {
                Text("Don't have an account?")
                
                Text("Sign up")
                    .fontWeight(.semibold)
            }
            .font(.footnote)
            .foregroundStyle(Color.black)
        }
        .padding(.vertical, 16.0)
    }
    
    @ViewBuilder
    private func LoginButton() -> some View {
        Button {
            
        } label: {
            Text("Login")
                .appButtonStyle()
        }
    }
    
    @ViewBuilder
    private func ForgotPasswordView() -> some View {
        NavigationLink {
            Text("Forgot password page")
        } label: {
            Text("Forgot password?")
                .secondaryTextModifier()
        }
    }
    
    @ViewBuilder
    private func LogoView() -> some View {
        Image("Common/applogo")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding()
    }
}

#Preview {
    AuthView()
}
