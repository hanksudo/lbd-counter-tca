//
//  AppFeatureTests.swift
//  CounterTests
//
//  Created by Hank Wang on 2024/10/13.
//

import ComposableArchitecture
import Testing

@testable import Counter

@MainActor
struct AppFeatureTests {

    @Test func incrementInFirstTab() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }
        
        await store.send(\.tab1.incrementButtonTapped) {
            $0.tab1.count = 1
        }
    }

}
