//
//  IlhamVer.swift
//  SteveJobs
//
//  Created by Neslihan Yağmurca on 1.05.2025.
//

import SwiftUI

struct IlhamVer: View {
    var body: some View {
        VStack (spacing:100){
            VStack{
                Image("Image")
                Text("Steve Jobs").font(.system(size: 22)).foregroundStyle(.red).bold()
            }
            Text("Dünyayı değiştirecek insanlar, onu değiştirebileceklerini düşünecek kadar çılgın olanlardır").multilineTextAlignment(.center).padding()
            
            Button("İlham Ver"){
                
            }.foregroundColor(.white).padding().background(.red).cornerRadius(8)}
    }
}

#Preview {
    IlhamVer()
}
