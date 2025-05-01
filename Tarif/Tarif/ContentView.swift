//
//  ContentView.swift
//  Tarif
//
//  Created by Neslihan Yağmurca on 1.05.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{
            geometry in
            let ekranGenislik=geometry.size.width
            let ekranYukseklik=geometry.size.height
            VStack{
                Image("yemekresim").resizable().frame(width: ekranGenislik,height: ekranYukseklik/3)
                VStack(alignment: .leading){
                    Text("Köfte").font(.system(size: 30)).foregroundColor(.red)
                    HStack{
                        Text("Izgaraya Uygun")
                        Spacer()
                        Text("1 Mayıs")
                    }.padding()
                    Text("Uygun bir yoğurma kabı içerisine kıymamızı alalım. Üzerine rendelenmiş ve suyu sıkılmış soğan, küçük küçük kesilmiş sarımsak, yumurta, galeta unu, sıvı yağ, maydanoz, tuz, karabiber ve kimyonu alalım ve malzemelerimiz güzelce karışana kadar yoğuralım.").multilineTextAlignment(.center).padding([.leading,.trailing],50)
                    Spacer()
                    HStack (spacing: 0){
                        Button(action: {
                            print("Beğen butonuna tıklandı")
                        }) {
                            Text("Beğen")
                        }.foregroundColor(.black).frame(width: ekranGenislik/2,height: ekranYukseklik/10).background(.yellow)
                        Button(action: {
                            print("Beğen butonuna tıklandı")
                        }) {
                            Text("Yorum Yap")
                        }.foregroundColor(.black).frame(width: ekranGenislik/2,height: ekranYukseklik/10).background(.orange)
                        
                    }
                    
                    
                }
            }
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
