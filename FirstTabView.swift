//
//  FirstTabView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct FirstTabView: View {
    
    @State private var firstDetailIsShow: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("First Tab View")
                NavigationLink(
                    destination: FirstDetailView(),
                    isActive: $firstDetailIsShow,
                    label: {
                        Text("Go to detail")
                    })
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
