//
//  SecondTabView.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

struct SecondTabView: View {
    
    @State private var isPresentingOverlay: Bool = false
    
    var body: some View {
        
        VStack {
        Text("Second Tab View")
            
            Button(action: {
                isPresentingOverlay.toggle()
            }, label: {
                Text("Show overlay")
            })
            
            .fullScreenCover(isPresented: $isPresentingOverlay, content: {
                VStack{
                    Text("This is taking all the space")
                    Button(action: {
                        isPresentingOverlay = false
                    }, label: {
                        Text("Done")
                    })
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.yellow)
            })
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
