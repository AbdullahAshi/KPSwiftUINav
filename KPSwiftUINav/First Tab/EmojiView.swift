//
//  EmojiView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct EmojiView: View {
    
    let item: String
    
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        VStack(spacing: 30) {
            
        
        Text(item)
            .font(.system(size: 120.0))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.pink)
            
            Button(action: {
                stateManager.goToFirstRootView()
            }, label: {
                Text("Go back to root")
            })
            
            Button(action: {
                stateManager.selectedItem = nil
            }, label: {
                Text("Go one step back")
            })
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(item: "😸")
            .environmentObject(StateManager())
    }
}
