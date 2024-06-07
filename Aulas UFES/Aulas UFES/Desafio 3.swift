//
//  Desafio 3.swift
//  Aulas UFES
//
//  Created by Turma02-22 on 06/06/24.
//

import SwiftUI

struct Desafio_3: View {
    var body: some View {
        HStack(){
            VStack{
                Image("Image 4")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .cornerRadius(100)
                    .foregroundColor(Color.gray)
            }
            VStack{
                HStack(spacing: 10){
                    VStack{
                        Text("8")
                        Text("Posts")
                            .font(. system(size: 11))
                    }
                    .padding()
                    VStack{
                        Text("12K")
                        Text("Seguidores")
                            .font(. system(size: 11))
                        
                    }
                    .padding()
                    VStack{
                        Text("2K")
                        Text("Seguindo")
                            .font(. system(size: 11))
                    }
                }
                HStack(){
                    Text("Editar Perfil")
                        .frame(width: 220, height: 30)
                        .background(.gray)
                }
            }
        }
        .padding()
        HStack(){
            Text("Pedro Henrique Mendonça")
                .frame(width: 350, alignment: .leading)
                .bold()
        }
        HStack(){
            Text("Ἐν ἀρχῇ ἦν ὁ λόγος, καὶ ὁ λόγος ἦν πρὸς τὸν θεόν, καὶ θεὸς ἦν ὁ λόγος")
                .frame(width: 350, alignment: .leading)
        }
        HStack(){
            Spacer()
            VStack(){
                Image("Image 3")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            Spacer()
            Spacer()
            VStack(){
                Image("Image")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            Spacer()
            Spacer()
            VStack(){
                Image("Image 2")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            Spacer()
            
        }
        .padding()
        HStack(){
            VStack(){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
            VStack(){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
            VStack(){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
        }
        HStack(){
            VStack(){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
            VStack(){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
            VStack(){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
        }
        HStack(){
            VStack(){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
            VStack(){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
            VStack(){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
        }
    }
}

#Preview {
    Desafio_3()
}
