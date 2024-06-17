//
//  Model.swift
//  Aula 7
//
//  Created by Turma02-22 on 14/06/24.
//

import Foundation

struct Author : Decodable, Hashable {
    //var id = UUID()
    var name : String?
    var birth_year : Int?
    var death_year : Int?
}

struct Book : Decodable, Identifiable {
    var id : Int?
    var title : String?
    var authors : [Author]?
    var subjects : [String]?
    var languages : [String]?
    var copyright : Bool?
    var media_type : String?
    var download_count : Int?
}

struct API : Decodable{
    var results: [Book]?
}
