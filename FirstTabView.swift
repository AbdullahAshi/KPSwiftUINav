//
//  FirstTabView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct FirstTabView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("First Tab View")
                NavigationLink("Go to Detail", destination: FirstDetailView())
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
