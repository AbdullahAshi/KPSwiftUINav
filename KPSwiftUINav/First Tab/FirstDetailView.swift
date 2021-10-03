//
//  FirstDetailView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct FirstDetailView: View {
    
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        EmojiListView (selectedEmoji: $stateManager.selectedItem)
        
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FirstDetailView()
                .environmentObject(StateManager())
        }
    }
}
