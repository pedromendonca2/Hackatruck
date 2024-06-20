//
//  ContentView.swift
//  Aula 8
//
//  Created by Turma02-22 on 18/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack{
            List(vm.characters, id: \._id){ i in
                    NavigationLink(destination: PublicationInfo(character: i)){
                        Text(i.title!)
                    }
                }.onAppear(){
                    vm.fetchPublications()
                }
        }
    }
}

#Preview {
    ContentView()
}
