//
//  FirstBodyView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 4/10/21.
//

import SwiftUI

struct FirstBodyView: View {
    
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        VStack {
            Text("First Tab View")
            NavigationLink(
                destination: FirstDetailView(),
                isActive: $stateManager.firstDetailIsShown,
                label: {
                    Text("Go to detail")
                })
        }
    }
}

struct FirstBodyView_Previews: PreviewProvider {
    static var previews: some View {
        FirstBodyView()
            .environmentObject(StateManager())
    }
}
