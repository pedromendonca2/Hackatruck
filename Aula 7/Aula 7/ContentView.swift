//
//  ContentView.swift
//  Aula 7
//
//  Created by Turma02-22 on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    @State private var currentBook = Book(id: 0, title: "", authors:[], subjects:[], languages:[], copyright: false, media_type: "", download_count: 0)
    
    var body: some View {
        NavigationStack{
            VStack {
                List(vm.books){ i in
                    NavigationLink(destination: BookInfo(livro: currentBook)){
                        Text(i.title!).onTapGesture {
                            currentBook = i
                        }
                    }
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
