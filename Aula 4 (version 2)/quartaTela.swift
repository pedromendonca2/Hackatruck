//
//  quartaTela.swift
//  Aula 4 (version 2)
//
//  Created by Turma02-22 on 11/06/24.
//

import SwiftUI

struct quartaTela: View {
    var body: some View {
        VStack{
            Text("Boas Vindas").font(.title).bold().foregroundColor(.white).padding()
            Spacer()
            Text("Volte, Pedro").bold().frame(width: 120, height: 60).foregroundColor(.white).background(.pink).cornerRadius(10).padding()
            Spacer()
        } .frame(width: 1000, height: 780).background(.hacka)
    }
}

#Preview {
    quartaTela()
}
