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
        Text("ID: \(livro.id!)\nTitle: \(livro.title!)\n")
        
//        Text("Author(s): ")
//        ForEach(livro.authors!){ i in
//            Text("Authors: \()\n")
//        }
        
        if let subjects = livro.subjects{
            ForEach(subjects, id: \.self){ i in
                Text("Subject(s): \(i)\n")
            }
        }
        
//        ForEach(livro.languages!){ i in
//            Text("Language(s): \(i)\n")
//        }
        
        
        Text("Copyright: \(livro.copyright!)\nMedia Type: \(livro.media_type!)\nDownload Count: \(livro.download_count!)")
    }
}

#Preview {
    BookInfo(livro: Book(id: 0, title: "Bob", authors:[], subjects:[], languages:[], copyright: false, media_type: "", download_count: 0))
}
