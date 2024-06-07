//
//  ContentView.swift
//  Aulas UFES
//
//  Created by Turma02-22 on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.red)
                Spacer()
                Image(systemName: "square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.blue)
            }
        }
        .padding()
        
        Spacer()
        
        VStack {
            HStack{
                Image(systemName: "square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.green)
                Spacer()
                Image(systemName: "square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
