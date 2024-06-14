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
    @State private var currentCountry = Location(name: "", coordinate: CLLocationCoordinate2D(latitude: 55.69055777997899, longitude: 12.552956499413034), flag: "", description: "")
    
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
                    Spacer()
                    ScrollView(.horizontal){
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
