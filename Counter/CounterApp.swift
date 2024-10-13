//
//  CounterApp.swift
//  Counter
//
//  Created by Hank Wang on 2024/08/29.
//

import ComposableArchitecture
import SwiftUI

@main
struct CounterApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: CounterApp.store)
        }
    }
}
