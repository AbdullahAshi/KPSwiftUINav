//
//  StateManager.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import Foundation
import Combine

class StateManager: ObservableObject {
    @Published var selection: Int = 1
    @Published var firstDetailIsShown: Bool = false
    @Published var selectedItem: String? = nil
}
