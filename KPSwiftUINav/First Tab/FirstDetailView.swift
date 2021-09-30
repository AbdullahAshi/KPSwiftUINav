//
//  FirstDetailView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct FirstDetailView: View {
    
    let item: [String] = ["🤩","😸","☘️","🎃"]
    
    var body: some View {
        
        List(item, id: \.self ) { item in

            NavigationLink(
                destination: EmojiView(item: item),
                label: {
                    Text(item)
                })
        }

        Text("First Detail View")
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FirstDetailView()
        }
    }
}