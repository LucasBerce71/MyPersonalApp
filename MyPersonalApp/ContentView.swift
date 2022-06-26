//
//  ContentView.swift
//  MyPersonalApp
//
//  Created by Lucas Jesus on 26/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var welcomeText: String = "Seja Bem vindo ao meu portifólio! Aqui você encontar todos os meus projetos que desenvolvi durante minha carreira de dev frontend.";
    
    @State private var acceptAutoUpdates = true;
    
    var body: some View {
        GroupBox(label: Label("Lucas Bercê de Jesus", systemImage: "applelogo")) {
            ScrollView(.vertical, showsIndicators: true) {
                Text(welcomeText)
            }.frame(height: 100)
            Toggle (isOn: $acceptAutoUpdates) {
                Text("Receber atualizações automáticas")
            }.tint(.black)
        }.shadow(radius: 30)
            .foregroundColor(.black)
            .padding(30)
            .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
