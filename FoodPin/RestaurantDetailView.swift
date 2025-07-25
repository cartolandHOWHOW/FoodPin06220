//
//  RestaurantDetailView.swift
//  FoodPin
//
//  Created by max on 2025/6/18.
//
// git success

import SwiftUI

struct RestaurantDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var restaurant: Restaurant
    
    
    var body: some View {
        ScrollView {
            
            VStack(alignment:. leading) {
                Image(restaurant.image)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0,maxWidth:  .infinity)
                    .frame(height: 445)
                    .overlay {
                        VStack {
                            Image(systemName: "heart")
                                .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .topTrailing)
                                .padding()
                                .font(.system(size: 30))
                                .foregroundStyle(.white)
                                .padding(.top, 40)
                        }
                    }
                VStack(alignment: .leading,spacing: 5){
                    Text(restaurant.name)
                        .font(.headline)
                        .bold()
                    Text(restaurant.type)
                        .font(.system(.headline,design: .rounded))
                        .padding(.all,5)
                        .background(.black)
                }
                
                .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .bottomLeading)
                .foregroundStyle(.white)
                .padding()
                
            }
            Text(restaurant.description)
                .padding()
            HStack(alignment: .top){
                VStack(alignment: .leading) {
                    Text("ADDRESS")
                        .font(.system(.headline,design: .rounded))
                    Text(restaurant.location)
                }
                .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                VStack(alignment: .leading){
                    Text("PHONE")
                        .font(.system(.headline,design: .rounded))
                }
                .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }){
                    Text("\(Image(systemName: "chevron.left"))\(restaurant.name)")
                }
            }
        }
    }
}
#Preview("RestaurantDetailView") {
    NavigationStack {
        RestaurantDetailView(restaurant: Restaurant(
            name: "Cafe Deadend",
            type: "Coffee & Tea Shop",
            location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong",
            phone: "232-923423",
            description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as cappuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.",
            image: "cafedeadend",
            isFavorite: true
        ))
        .environment(\.dynamicTypeSize, .xxxLarge)
        
    }
    .tint(.white)
    
}
