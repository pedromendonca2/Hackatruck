//
//  BookInfo.swift
//  Aula 7
//
//  Created by Turma02-22 on 14/06/24.
//

import SwiftUI

struct BookInfo: View {
    
    var livro: Book
    
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 12){
                
                Text("Title: \(livro.title ?? "")\n")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.vertical)
                
                Text("ID: \(livro.id ?? 0)\n")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Text("Author(s):\n").font(.headline)
                    ForEach(livro.authors ?? [], id: \.self){ i in
                        Text("Name: \(i.name ?? "")\n").font(.subheadline)
                            .fontWeight(.medium)
                        
                        Text("Birth year: \(i.birth_year!)\nDeath year: \(i.death_year!)\n")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                
                Text("Subject(s):\n").font(.headline)
                    ForEach(livro.subjects ?? [], id: \.self){ i in
                        Text("\(i)\n")
                            .font(.subheadline)
                            .foregroundColor(.green)
                    }
                
                
                Text("Language(s):\n").font(.headline)
                    ForEach(livro.languages ?? [], id: \.self){ i in
                        Text("\(i)\n")
                            .font(.subheadline)
                            .foregroundColor(.purple)
                    }
                
                Text("Copyright: \(livro.copyright ?? false ? "Yes" : "No")")
                    .font(.subheadline)
                    .foregroundColor(livro.copyright ?? false ?
                        .green : .red)
                
                Text("Media Type: \(livro.media_type ?? "")")
                                    .font(.subheadline)
                                    .foregroundColor(.blue)
                
                Text("Download Count: \(livro.download_count ?? 0)")
                                    .font(.subheadline)
                                    .foregroundColor(.orange)
            }
        }
   }
}

#Preview {
    BookInfo(livro: Book(id: 0, title: "Bob", authors:[], subjects:[], languages:[], copyright: true, media_type: "DVD", download_count: 6))
        .preferredColorScheme(.light)
}
