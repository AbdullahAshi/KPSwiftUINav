//
//  ContentView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var stateManager: StateManager
    var body: some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            TabView(selection: $stateManager.selection) {
                FirstTabView()
                    .tabItem { Text("Fisrt") }
                    .tag(1)
                
                SecondTabView()
                    .tabItem { Text("Second") }
                    .tag(2)
            }
        } else {
            
            NavigationView {
                List {
                    NavigationLink ("First", destination: FirstBodyView(), tag: 1, selection: $stateManager.selectedListItem)
                    
                    NavigationLink ("Second", destination: SecondTabView(), tag: 2, selection: $stateManager.selectedListItem)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StateManager())
    }
}
