//
//  TahminEkrani.swift
//  SayiTahmin
//
//  Created by Neslihan Yağmurca on 6.05.2025.
//

import SwiftUI

struct TahminEkrani: View {
    @State private var SonucEkraninaGecis=false
    @State private var Sonuc=false
    @State private var KalanHak=5
    @State private var rastgeleSayi=0
    @State private var yonlendirme=""
    @State private var tfTahmin=""
    var body: some View {
        VStack(spacing:100) {
            Text("Kalan hak \(KalanHak) ").font(.system(size: 36)).foregroundColor(.red)
            Text("Yardım \(yonlendirme) ").font(.system(size: 24)).foregroundColor(.black)
            TextField("Tahmin",text:$tfTahmin).textFieldStyle(RoundedBorderTextFieldStyle()).padding(50)
            Button("Tahmin Et"){
             KalanHak=KalanHak-1
                if let tahmin=Int(tfTahmin){
                    if tahmin==rastgeleSayi{
                        SonucEkraninaGecis=true
                        Sonuc=true
                        return
                    }
                    if tahmin>rastgeleSayi{
                        yonlendirme="azalt"
                    }
                    if tahmin<rastgeleSayi{
                        yonlendirme="arttır"
                    }
                    if KalanHak==0{
                        SonucEkraninaGecis=true
                        Sonuc=false
                    }
                   
                }
                tfTahmin=""
            }.foregroundColor(.white).frame(width:250,height: 50).background(.purple).cornerRadius(16)
            
           
        }.navigationDestination(isPresented: $SonucEkraninaGecis){
            SonucEkrani(sonuc: Sonuc)
          
        }.onAppear(){
            rastgeleSayi=Int.random(in: 0...100)
            print(rastgeleSayi)
            
            //arayuzu sıfırlama
            KalanHak=5
            yonlendirme=""
            tfTahmin=""
        }

    }
}

#Preview {
    TahminEkrani()
}
