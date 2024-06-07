//
//  Desafio 1.swift
//  Aulas UFES
//
//  Created by Turma02-22 on 06/06/24.
//

import SwiftUI

struct Desafio_1: View {
    var body: some View {
        VStack{
            HStack{
                Image("Image 1")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(100)
                    .padding()
                VStack(spacing: 10){
                    Text("Shrek")
                        .foregroundColor(Color.red)
                    Text("Segundo")
                        .foregroundColor(Color.green)
                    Text("Melhor filme")
                        .foregroundColor(Color.blue)
                }
            }
        }
    }
}

#Preview {
    Desafio_1()
}
