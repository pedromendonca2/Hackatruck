//
//  PaletteView.swift
//  Aula 4
//
//  Created by Turma02-22 on 11/06/24.
//

import SwiftUI

struct PaletteView: View {
    var body: some View {
        VStack{
            Image(systemName: "paintpalette.fill")
                .resizable()
                .frame(width: 200, height: 200)
                //.background(.blue)
                //.cornerRadius(100)
        }
        .frame(width: 1000, height: 750).background(.gray)
    }
}

#Preview {
    PaletteView()
}
