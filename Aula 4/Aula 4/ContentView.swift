//
//  ContentView.swift
//  Aula 4
//
//  Created by Turma02-22 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    init() {
    UITabBar.appearance().backgroundColor = UIColor.white

    }
    var body: some View {
        TabView{
            PaintBrushView()
                .tabItem{
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            BrushPointedView()
                .tabItem{
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            PaletteView()
                .tabItem{
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            ListView()
                .tabItem{
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
