import Foundation

class ViewModel : ObservableObject{
    @Published var characters : [offspring] = []
    
    //Method
    func fetchPublications(){
        guard let url = URL(string: "http://localhost:1880/buscar" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let jsonDecoficado = try JSONDecoder().decode([offspring].self, from: data)
                
                // Colocar o valor em moedas
                DispatchQueue.main.async {
                    self?.characters = jsonDecoficado
                }
            }catch{
                print(error)
            }
        } // Decodifica os dados
        
        task.resume()
    }
}
