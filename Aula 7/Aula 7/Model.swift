//
//  Model.swift
//  Aula 7
//
//  Created by Turma02-22 on 14/06/24.
//

import Foundation

struct Author : Decodable{
    var name : String?
    var birth_year : Int?
    var death_year : Int?
}

//struct Format : Decodable{
//    var text/html : String?
//    var application/epub+zip : String?
//    var text/html : String?
//    var text/html : String?
//    var text/html : String?
//}

struct Book : Decodable, Identifiable {
    var id : Int?
    var title : String?
    var authors : [Author]?
    var subjects : [String]?
    var languages : [String]?
    var copyright : Bool?
    var media_type : String?
    //var formats : [Format]?
    var download_count : Int?
}

struct API : Decodable{
    var results: [Book]?
}

//id    1513
//title    "Romeo and Juliet"
//authors
//0
//name    "Shakespeare, William"
//birth_year    1564
//death_year    1616
//subjects
//0    "Conflict of generations -- Drama"
//1    "Juliet (Fictitious character) -- Drama"
//2    "Romeo (Fictitious character) -- Drama"
//3    "Tragedies"
//4    "Vendetta -- Drama"
//5    "Verona (Italy) -- Drama"
//6    "Youth -- Drama"
//bookshelves    []
//languages
//0    "en"
//copyright    false
//media_type    "Text"
//formats
//text/html    "https://www.gutenberg.org/ebooks/1513.html.images"
//application/epub+zip    "https://www.gutenberg.org/ebooks/1513.epub3.images"
//application/x-mobipocket-ebook    "https://www.gutenberg.org/ebooks/1513.kf8.images"
//application/rdf+xml    "https://www.gutenberg.org/ebooks/1513.rdf"
//image/jpeg    "https://www.gutenberg.org/cache/epub/1513/pg1513.cover.medium.jpg"
//text/plain; charset=us-ascii    "https://www.gutenberg.org/ebooks/1513.txt.utf-8"
//application/octet-stream    "https://www.gutenberg.org/cache/epub/1513/pg1513-h.zip"
//download_count    67717"
