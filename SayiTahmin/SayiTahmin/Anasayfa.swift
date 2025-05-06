//
//  ContentView.swift
//  SayiTahmin
//
//  Created by Neslihan Yağmurca on 6.05.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State private var TahminEkraninaGecis=false
    var body: some View {
       
        NavigationStack {
            VStack(spacing:100) {
                Text("Tahmin Oyunu").font(.system(size: 36))
                Image("zar").resizable().frame(width: 128,height: 128)
                Button("Oyuna başla"){
                    TahminEkraninaGecis=true
                    
                }.foregroundColor(.white).frame(width:250,height: 50).background(.purple).cornerRadius(16)
                
               
            }.navigationDestination(isPresented: $TahminEkraninaGecis){
                TahminEkrani()
              
                }
            
        }
       
    }
}

#Preview {
    Anasayfa()
}
