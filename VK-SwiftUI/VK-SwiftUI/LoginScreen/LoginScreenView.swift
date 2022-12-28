//
//  ContentView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 23.12.2022.
//

import SwiftUI
import Combine

struct LoginScreenView: View {
    @State private var login = ""
    @State private var password = ""
    
    @State private var shouldShowLogo: Bool = true
    @State private var showVerifyErrorAlert = false
    
    private func verifyLoginData() {
        if login == "login" && password == "password" {
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
                        TextField("Введите логин", text: $login)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(8)
                            .padding(.top, 40)
                            .padding(.horizontal, 30)
                            .font(.title3)
                        //Password SecureField
                        SecureField("Введите пароль", text: $password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(8)
                            .padding(.horizontal, 30)
                            .font(.title3)
                        Spacer()
                            .frame(height: 40)
                        //Login button
                        Button(action: verifyLoginData) {
                            Text("Войти")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("CustomGreen"))
                                .cornerRadius(12)
                                .padding(8)
                                .padding(.bottom, 40)
                                .padding(.horizontal, 30)
                                .font(.title3.bold())
                                .foregroundColor(.white)
                        }.disabled(login.isEmpty || password.isEmpty)
                        
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
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
