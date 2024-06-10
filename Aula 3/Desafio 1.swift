//
//  Desafio 1.swift
//  Aula 3
//
//  Created by Turma02-22 on 10/06/24.
//

import SwiftUI

struct Desafio_1: View {
    
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State private var classificacao: String = ""
    @State private var resultado: Float = 0
    @State private var cor: Color = .baixoPeso

    var body: some View {
        
        VStack{
            HStack{
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                    .bold()
            }
            .padding()
            HStack{
                TextField("", text: $peso)
                    .frame(width: 350, height: 35)
                    .background(.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
            }
            .padding()
            HStack{
                TextField("", text: $altura)
                    .frame(width: 350, height: 35)
                    .background(.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
            }
            .padding()
            HStack{
                Button("Calcular"){
                    let resultado = (Float(peso) ?? 0) / ((Float(altura) ?? 0) * (Float(altura) ?? 0))
                    
                    if(resultado < 18.5){
                        classificacao = "Baixo Peso"
                        cor = .baixoPeso
                    } else if(resultado < 24.99){
                        classificacao = "Normal"
                        cor = .normal
                    } else if(resultado < 29.99){
                        classificacao = "Sobrepeso"
                        cor = .sobrepeso
                    } else{
                        classificacao = "Obesidade"
                        cor = .obesidade
                    }
                        
                }
                .frame(width: 100, height: 40)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
            }
            Spacer()
            HStack{
                Text("\(classificacao)")
                    .font(. system(size: 20))
            }
            Spacer()
            HStack{
                Image("Image")
                    .resizable()
                    .frame(width: 380, height: 200)
            }
        }
        
        .background(Color(cor))
    }
}

#Preview {
    Desafio_1()
}
