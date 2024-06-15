//
//  ViewModel.swift
//  Aula 7
//
//  Created by Turma02-22 on 14/06/24.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var books : [Book] = []
    
    //Method
    func fetchBooks(){
        guard let url = URL(string: "https://gutendex.com/books/" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let jsonDecoficado = try JSONDecoder().decode(API.self, from: data)
                
                // Colocar o valor em moedas
                DispatchQueue.main.async {
                    self?.books = jsonDecoficado.results!
                }
            }catch{
                print(error)
            }
        } // Decodifica os dados
        
        task.resume()
    }
}
