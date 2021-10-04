//
//  EmojiListView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 3/10/21.
//

import SwiftUI

struct EmojiListView: View {
    
    let item: [String] = ["🤩","😸","☘️","🎃"]
    @Binding var selectedEmoji: String?
    
    var body: some View {
        List(item, id: \.self ) { item in
            NavigationLink(
                destination: EmojiView(item: item),
                tag: item,
                selection: $selectedEmoji,
                label: {Text(item)})
        }
        .navigationTitle("First Detail View")
    }
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView(selectedEmoji: .constant(nil))
    }
}
