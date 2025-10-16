//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 17.10.2025.
//

import SwiftUI

struct RegistrationView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullName: String = ""
    @State private var username: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                LogoView()
                TextFieldsView()
                RegisterButton()
                
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
            
            TextField("Enter your fullname", text: $fullName)
                .appTextFieldStyle()
            
            TextField("Enter your username", text: $username)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .appTextFieldStyle()
        }
        .padding(.vertical)
    }
    
    @ViewBuilder
    private func RegisterButton() -> some View {
        Button {
            
        } label: {
            Text("Sign Up")
                .appButtonStyle()
        }
        .disabled(email.isEmpty && username.isEmpty && password.isEmpty && fullName.isEmpty)
    }
    
    @ViewBuilder
    private func LogoView() -> some View {
        Image("Common/applogo")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding()
    }
    
    @ViewBuilder
    private func FooterView() -> some View {
        Button(action: {
            dismiss.callAsFunction()
        }, label: {
            HStack(alignment: .center, spacing: 3) {
                Text("Already have an account?")
                
                Text("Sign in")
                    .fontWeight(.semibold)
            }
            .font(.footnote)
            .foregroundStyle(Color.black)
        })
        .padding(.vertical, 16.0)
    }
}

#Preview {
    RegistrationView()
}
