//
//  FirstTabView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct FirstTabView: View {
    
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        NavigationView {
            FirstBodyView()
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
            .environmentObject(StateManager())
    }
}
