//
//  ContentView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 23.12.2022.
//

import SwiftUI
import Combine

struct LoginView: View {
    @State private var login = ""
    @State private var password = ""
    
    @State private var shouldShowLogo: Bool = true
    @State private var showVerifyErrorAlert = false
    
    @Binding var isUserAuth: Bool
    
    private func verifyLoginData() {
        if login == "login" && password == "password" {
            isUserAuth = true
        } else {
            showVerifyErrorAlert = true
        }
        password = ""
    }
    
    private let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .map { _ in true },
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ in false }
    ).removeDuplicates()
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 100) {
                    if shouldShowLogo {
                        //Logo image
                        Image("VK")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.top, 100)
                    }
                    VStack {
                        //Login TextField
                        TextField("Enter login", text: $login)
                            .padding()
                            .background(Color.white)
                            .textInputAutocapitalization(/*@START_MENU_TOKEN@*/.never/*@END_MENU_TOKEN@*/)
                            .cornerRadius(12)
                            .padding(8)
                            .padding(.top, 40)
                            .padding(.horizontal, 30)
                            .font(.title3)
                            
                        //Password SecureField
                        SecureField("Enter password", text: $password)
                            .padding()
                            .background(Color.white)
                            .textInputAutocapitalization(/*@START_MENU_TOKEN@*/.never/*@END_MENU_TOKEN@*/)
                            .cornerRadius(12)
                            .padding(8)
                            .padding(.horizontal, 30)
                            .font(.title3)
                        Spacer()
                            .frame(height: 40)
                        //Login button
                        Button(action: verifyLoginData) {
                            Text("Login")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("CustomGreen"))
                                .cornerRadius(12)
                                .padding(8)
                                .padding(.bottom, 40)
                                .padding(.horizontal, 30)
                                .font(.title3.bold())
                                .foregroundColor(.white)
                        }
                        .disabled(login.isEmpty || password.isEmpty)
                            
                    }.background(Color("CustomLightGray"))
                        .cornerRadius(30)
                        .padding(15)
                }
                
            }.onReceive(keyboardIsOnPublisher) { iskeyboardOn in
                withAnimation(Animation.easeInOut(duration: 0.5)) {
                    shouldShowLogo = !iskeyboardOn }
            }
            
        }.onTapGesture {
            UIApplication.shared.endEditing()
            
            
        }.alert(isPresented: $showVerifyErrorAlert, content: { Alert(title: Text("Error"), message: Text("Incorrent Login/Password was entered"))
        })
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(Color("BrandColor").ignoresSafeArea())
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isUserAuth: (.constant(false)))
    }
}
