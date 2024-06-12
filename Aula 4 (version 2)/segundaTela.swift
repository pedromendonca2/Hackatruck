//
//  segundaTela.swift
//  Aula 4 (version 2)
//
//  Created by Turma02-22 on 11/06/24.
//

import SwiftUI

struct segundaTela: View {
    var body: some View {
        VStack{
            Text("Nome Completo").bold().foregroundStyle(.white)
                .padding().font(.title).bold()
            Spacer()
            Text("Nome: Pedro Henrique\nSobrenome: Mendonça").frame(width: 200, height: 90).foregroundStyle(.white).background(.pink).cornerRadius(10)
            Spacer()
        } .frame(width: 1000, height: 780).background(.hacka)
    }
}

#Preview {
    segundaTela()
}
