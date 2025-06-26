//
//  LogInView.swift
//  Log in page1
//
//  Created by Ronit Suchak on 03/06/2025.
//

import SwiftUI

struct LogInView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                //Image
                Image("logo")
                    .resizable()
                    .scaledToFill( )
                    .frame(width: 140, height:100)
                    .padding(.vertical, 32)
                //Form fields
                VStack(spacing:24) {
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                             
                }.padding(.horizontal)
                    .padding(.top, 12)
                // sign in button
                
                Button {
                    print("Log user in..")
                } label: {
                    
                    
                    HStack {
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }.foregroundStyle(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue)
                .cornerRadius(10))
                .padding(.top, 24)
                
                Spacer()
                
                // sign up button
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 2) {
                        Text("Dont have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }

            }
        }
    }
}

#Preview {
    LogInView()
}
