//
//  RegistrationView.swift
//  Log in page1
//
//  Created by Ronit Suchak on 03/06/2025.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack {
            //Image
            Image("logo")
                .resizable()
                .scaledToFill( )
                .frame(width: 140, height:100)
                .padding(.vertical, 32)
            VStack(spacing:24) {
                InputView(text: $email,
                          title: "Email Address",
                          placeholder: "name@example.com")
                .autocapitalization(.none)
                
                InputView(text: $fullname,
                          title: "Full Name",
                          placeholder: "Enter your name")
               
                
                InputView(text: $password,
                          title: "Password",
                          placeholder: "Enter your password",
                          isSecureField: true)
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeholder: "Confirm your password",
                          isSecureField: true)
                         
            }.padding(.horizontal)
                .padding(.top, 12)
            
            Button {
                print("Sign user up..")
            } label: {
                
                
                HStack {
                    Text("SIGN UP")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }.foregroundStyle(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            }
            .background(Color(.systemBlue)
            .cornerRadius(10))
            .padding(.top, 24)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 2) {
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }

            
        }
    }
}

#Preview {
    RegistrationView()
}
