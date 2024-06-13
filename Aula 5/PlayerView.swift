//
//  PlayerView.swift
//  Aula 5
//
//  Created by Turma02-22 on 12/06/24.
//

import SwiftUI

struct PlayerView: View {
    private var musique: Song
    
    init(nouveauMusique: Song){
        musique = nouveauMusique
    }
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.black, Color.black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: musique.capa)){
                    result in result.image?.resizable().frame(width: 300, height: 300).padding()
                }
                Text(musique.name).foregroundStyle(.white).font(.title).bold()
                Text(musique.artist).foregroundStyle(.white).font(.title).padding(.bottom, 60)
                
                HStack(spacing: 40){
                    Image(systemName:
                            "shuffle").resizable().foregroundColor(.white).frame(width: 32, height: 32)
                    Image(systemName:
                            "backward.end.fill").resizable().foregroundColor(.white).frame(width: 32, height: 32)
                    Image(systemName:
                            "play.fill").resizable().foregroundColor(.white).frame(width: 45, height: 45)
                    Image(systemName:
                            "forward.end.fill").resizable().foregroundColor(.white).frame(width: 32, height: 32)
                    Image(systemName:
                            "repeat").resizable().foregroundColor(.white).frame(width: 32, height: 32)
                }
            }
            
        }
    }
}

#Preview {
    PlayerView(nouveauMusique: Song(id: 1, name: "Deus é Real", artist: "Vencedores por Cristo", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBL_q0E03e52O9ckcMm65CrRcIUfLBWgu2kw&s"))
}
