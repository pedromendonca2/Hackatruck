import SwiftUI

struct PublicationInfo: View {
    
    var character: offspring
    
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 150){
                
                Spacer()
                Text("Name: \(character.name ?? "")\n")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.indigo)
                //.padding(.vertical)
                
                Text("Title: \(character.title ?? "")\n")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.indigo)
                //.padding(.vertical)
                
                Text("Race: \(character.race ?? "")\n")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.indigo)
                //.padding(.vertical)
                
                Text("ID: \(character.deathAge ?? 0)\n")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.indigo)
                
                Text("Good: \(character.good ?? false ? "Yes" : "No")")
                    .font(.subheadline)
                    .foregroundColor(character.good ?? false ?
                        .green : .red)
                Spacer()
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("backgroundColor"))
        }.ignoresSafeArea()
   }
}

#Preview {
    PublicationInfo(character: offspring(_id: "", _rev: "", name: "Bob", title:"noTitle", race:"Elf", deathAge: 0, good:true))
}


