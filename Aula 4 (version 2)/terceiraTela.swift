//
//  terceiraTela.swift
//  Aula 4 (version 2)
//
//  Created by Turma02-22 on 11/06/24.
//

import SwiftUI

struct terceiraTela: View {
    var body: some View {
        VStack{
            Text("Boas Vindas").font(.title).bold().foregroundColor(.white).padding()
            Spacer()
            VStack{
                Text("Pedro").foregroundColor(.white)
                Text("Bem vindo, Pedro!").foregroundColor(.white).font(.title).bold()
                NavigationLink(destination: quartaTela()){
                    Text("Acessar tela").frame(width: 120, height: 60).foregroundColor(.white).background(.blue).cornerRadius(10).padding()
                }
            } .frame(width: 300, height: 180).background(.pink).cornerRadius(10)
            Spacer()
        } .frame(width: 1000, height: 780).background(.hacka)
    }
}

#Preview {
    terceiraTela()
}
