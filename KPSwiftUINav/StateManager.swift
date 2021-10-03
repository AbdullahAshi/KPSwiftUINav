//
//  StateManager.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import Foundation
import Combine

class StateManager: ObservableObject {
    @Published var selection: Int = 2
    @Published var firstDetailIsShown: Bool = false
    @Published var selectedItem: String? = nil
    
    private var subscriptions = Set<AnyCancellable>()
    
    init() {
        $firstDetailIsShown.filter({ !$0})
            .removeDuplicates()
            .sink(receiveValue: { [unowned self] _ in
                self.selectedItem = nil
            })
            .store(in: &subscriptions)
    }
    
    func goToFirstRootView() {
        selectedItem = nil
        firstDetailIsShown = false
    }
}
