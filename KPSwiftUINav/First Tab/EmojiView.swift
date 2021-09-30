//
//  EmojiView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct EmojiView: View {
    
    let item: String
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 30) {
            
        
        Text(item)
            .font(.system(size: 120.0))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.pink)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Go back to root")
            })
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Go one step back")
            })
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(item: "😸")
    }
}
