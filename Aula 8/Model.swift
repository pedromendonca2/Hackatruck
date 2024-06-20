//
//  Model.swift
//  Aula 8
//
//  Created by Turma02-22 on 19/06/24.
//

import Foundation

struct offspring : Decodable {
    var _id : String?
    var _rev : String?
    var name : String?
    var title : String?
    var race : String?
    var deathAge : Int?
    var good : Bool?
}

struct API : Decodable{
    var results: [offspring]?
}
