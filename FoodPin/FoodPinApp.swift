//
//  FoodPinApp.swift
//  FoodPin
//
//  Created by max on 2025/6/16.
//

import SwiftUI
// hi
@main
struct FoodPinApp: App {
    var body: some Scene {
        WindowGroup {
            RestaurantListView()
        }
    }
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor:UIColor(red:218 , green:96, blue: 51), .font: UIFont(name:"ArialRoundedMTBold", size: 35)!]
        navBarAppearance.titleTextAttributes = [.foregroundColor:UIColor(red:218 , green:96, blue: 51), .font: UIFont(name:"ArialRoundedMTBold", size: 20)!]
        navBarAppearance.backgroundColor = .clear
        navBarAppearance.backgroundEffect = .none
        navBarAppearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
    }
    
}

