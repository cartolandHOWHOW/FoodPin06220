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
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor:UIColor(named:"NavigationBarTitle") ?? UIColor.systemRed, .font: UIFont(name:"ArialRoundedMTBold", size: 35)!]
        navBarAppearance.titleTextAttributes = [.foregroundColor:UIColor(named:"NavigationBarTitle") ?? UIColor.systemRed, .font: UIFont(name:"ArialRoundedMTBold", size: 35)!]
        navBarAppearance.backgroundColor = .clear
        navBarAppearance.backgroundEffect = .none
        navBarAppearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
    }
    
}

