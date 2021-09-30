//
//  ContentView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 1
    var body: some View {
        TabView(selection: $selection) {
            FirstTabView()
                .tabItem { Text("Fisrt") }
                .tag(1)
            
            SecondTabView()
                .tabItem { Text("Second") }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
