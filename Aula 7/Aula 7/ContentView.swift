//
//  ContentView.swift
//  Aula 7
//
//  Created by Turma02-22 on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack{
                List(vm.books){ i in
                    NavigationLink(destination: BookInfo(livro: i)){
                        Text(i.title!)
                    }
                }.onAppear(){
                    vm.fetchBooks()
                }
        }
    }
}

#Preview {
    ContentView()
}
