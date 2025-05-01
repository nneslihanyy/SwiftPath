//
//  Login.swift
//  Login
//
//  Created by Neslihan Yağmurca on 1.05.2025.
//

import SwiftUI

struct Login: View {
    @State private var tfkullanici=""
    @State private var tfsifre=""
    var body: some View {
        VStack(spacing:50){
            Image("logo")
            TextField("Kullanıcı adı", text: $tfkullanici)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Şifre", text: $tfsifre)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("Login"){
                
            }.background(.red)
.foregroundStyle(.white)
                .padding()
                .cornerRadius(8)
                .frame(width: 100,height:50 )
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity).background(.blue)
    }
}

#Preview {
    Login()
}
