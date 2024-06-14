//
//  ContentView.swift
//  Aula 6
//
//  Created by Turma02-22 on 13/06/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    
    @State private var showingSheet = false
    @State private var countryName = "Brazil"
    @State private var currentCountry = Location(name: "Denmark", coordinate: CLLocationCoordinate2D(latitude: 55.69055777997899, longitude: 12.552956499413034), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Denmark.svg/240px-Flag_of_Denmark.svg.png", description: "The unified Kingdom of Denmark emerged in the 8th century AD as a proficient maritime power amid the struggle for control of the Baltic Sea.[2] In 1397, it joined Norway and Sweden to form the Kalmar Union, which persisted until the latter's secession in 1523. The remaining Kingdom of Denmark–Norway endured a series of wars in the 17th century that resulted in further territorial cessions. A surge of nationalist movements in the 19th century were defeated in the First Schleswig War of 1848. The adoption of the Constitution of Denmark on 5 June 1849 ended the absolute monarchy and introduced the current parliamentary system. An industrialised exporter of agricultural produce in the second half of the 19th century, Denmark introduced social and labour-market reforms in the early 20th century, which formed the basis for the present welfare state model and advanced mixed economy. Denmark remained neutral during World War I; Danish neutrality was violated in World War II by a rapid German invasion in April 1940. During occupation, a resistance movement emerged in 1943, while Iceland declared independence in 1944; Denmark was liberated after the end of the war in May 1945. In 1973, Denmark, together with Greenland but not the Faroe Islands, became a member of what is now the European Union, but negotiated certain opt-outs, such as retaining its own currency, the krone.")
    
    var body: some View {
            ZStack(alignment: .top){
                Map(position: $position){
                    Annotation("", coordinate: currentCountry.coordinate){
                        ZStack{
                            Rectangle().frame(width: 30, height: 30).foregroundStyle(.white)
                            Image(systemName: "info.circle.fill").resizable().foregroundColor(.black).frame(width: 32, height: 32)
                        }.onTapGesture {
                            showingSheet.toggle()
                        }
                    }
                }.ignoresSafeArea()
                    .sheet(isPresented: $showingSheet) {
                    SheetView(country: currentCountry)
                }
                ZStack{
                    Rectangle().fill(.white).ignoresSafeArea().opacity(0.6)
                    VStack{
                        Text("World Map").font(.title).bold()
                        Text(countryName).padding(.bottom)
                    }
                }.frame(maxWidth: .infinity, maxHeight: 100)
                VStack{
                    ScrollView(.horizontal){
                        Spacer()
                        HStack{
                            ForEach(locations){
                                country in
                                AsyncImage(url: URL(string: country.flag)){
                                    result in result.image?.resizable().frame(width: 75, height: 50).onTapGesture {
                                        position = MapCameraPosition.region(
                                            MKCoordinateRegion(
                                                center: country.coordinate,
                                                span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 10))
                                        )
                                        currentCountry = country
                                        countryName = country.name
                                    }
                                }
                            }
                        }.padding()
                    }
                }
            }
        }
}

#Preview {
    ContentView()
}
