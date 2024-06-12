//
//  ListView.swift
//  Aula 4
//
//  Created by Turma02-22 on 11/06/24.
//

import SwiftUI

var nomes = ["paintbrush.fill", "paintbrush.pointed.fill", "paintpalette.fill"]

struct ListView: View {
    var body: some View {
        VStack{
            Text("List").font(.largeTitle).bold()
                    .padding().frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            List(nomes, id: \.self){ nome in
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: nome)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ListView()
}
