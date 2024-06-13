//
//  ContentView.swift
//  Aula 5
//
//  Created by Turma02-22 on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    
    var Link_1 : String = "https://i.pinimg.com/736x/5d/fc/89/5dfc892dd56f23f9e463f3f18003e592.jpg"
    
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                LinearGradient(gradient: Gradient(colors: [Color.green, Color.black, Color.black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                VStack{
                    AsyncImage(url: URL(string: Link_1)){
                        result in result.image?.resizable().frame(width: 300, height: 300).padding()
                    }
                    Text("Pedro FM").foregroundStyle(.white).font(.title).bold().frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                    HStack{
                        AsyncImage(url: URL(string: Link_1)){
                            result in result.image?.resizable().frame(width: 50, height: 50).cornerRadius(100).padding()
                        }
                        Text("Pedro Songs").foregroundStyle(.white).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                    ScrollView(.vertical) {
                        ForEach(arrayMusicas){ song in
                            NavigationLink(destination: PlayerView(nouveauMusique: song)){
                                HStack{
                                    AsyncImage(url: URL(string: song.capa)){
                                        result in result.image?.resizable().frame(width: 50, height: 50).padding(.leading, 1)
                                    }.padding(.horizontal)
                                    VStack{
                                        Text(song.name).foregroundStyle(.white).bold().frame(maxWidth: .infinity, alignment: .leading)
                                        Text(song.artist).foregroundStyle(.white).frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    Image(systemName: "ellipsis").foregroundColor(.white)
                                }
                            }
                        }
                        Text("Sugeridos").foregroundStyle(.white).font(.title).bold().frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(arrayCapas){ song in
                                    VStack{
                                        AsyncImage(url: URL(string: song.capa)){
                                            result in result.image?.resizable().frame(width: 300, height: 300).padding(.leading, 1)
                                        }.padding(.horizontal)
                                        Text(song.name).foregroundStyle(.white).font(.title).bold()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
