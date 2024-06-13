//
//  Auxiliar.swift
//  Aula 5
//
//  Created by Turma02-22 on 12/06/24.
//

import Foundation

struct Song : Identifiable{
    var id : Int
    var name : String
    var artist : String
    var capa : String
}

var arrayMusicas = [
    Song(id: 1, name: "Deus é Real", artist: "Vencedores por Cristo", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBL_q0E03e52O9ckcMm65CrRcIUfLBWgu2kw&s"),
    Song(id: 2, name: "Salmo 96 (Cantai ao Senhor)", artist: "Vencedores por Cristo", capa: "https://lh3.googleusercontent.com/wSjGywKjzCgfXjrE-hQauSqfctC43UgN4Dddhz3kuwGQbDiQl1cIiI2-J2PUTUw_aTfvQyLB1YFappkw=w544-h544-l90-rj"),
    Song(id: 3, name: "Benedictus", artist: "Projeto Sola", capa: "https://akamai.sscdn.co/letras/360x360/albuns/7/5/d/c/937301596206739.jpg"),
    Song(id: 4, name: "Infinitamente Mais", artist: "Resgate", capa: "https://upload.wikimedia.org/wikipedia/pt/2/22/Resgate_-_Ac%C3%BAstico_2001.jpg"),
    Song(id: 5, name: "Perfeito Amor", artist: "Oficina G3", capa: "https://upload.wikimedia.org/wikipedia/pt/4/4d/Oficina_G3_-_O_Tempo_2000.jpg"),
    Song(id: 6, name: "Meu Universo", artist: "PG", capa: "https://i.scdn.co/image/ab67616d0000b273b1a35c5022e008aeed9fb690")
]

var arrayCapas = [
    Song(id: 7, name: "Johnny Cash", artist: "", capa: "https://mundovinyl.com.br/wp-content/uploads/2021/04/capa-1.jpg"),
    Song(id: 8, name: "Ray Charles", artist: "", capa: "https://mundovinyl.com.br/wp-content/uploads/2022/10/capa-4.webp")
]
