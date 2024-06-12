//
//  ContentView.swift
//  Aula 4 (version 2)
//
//  Created by Turma02-22 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("hackatruck")
                        .resizable().frame(width: 250, height: 150).padding()
                Spacer()
                NavigationLink(destination: segundaTela()){
                    Text("Nome Completo").frame(width: 180, height: 90).foregroundColor(.white).background(.pink).cornerRadius(10)
                }
                NavigationLink(destination: terceiraTela()){
                    Text("Boas Vindas").frame(width: 180, height: 90).foregroundColor(.white).background(.pink).cornerRadius(10)
                }
                Button("Sheet View"){
                    showingSheet.toggle()
                }
                .frame(width: 180, height: 90).foregroundColor(.white).background(.pink).cornerRadius(10)
                .sheet(isPresented: $showingSheet) {
                    SheetView()
                }
                Spacer()
            } .frame(width: 1000, height: 780).background(.hacka)
        }
    }
}

#Preview {
    ContentView()
}
