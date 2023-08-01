//
//  ContentView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
                .padding()
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    FeaturedTabView()
                        .frame(minHeight: 256)
                        .padding(.vertical, 10)
                    
                    CategoryGridView()
                    
                    TitleView(title: "Helmets")
                    
                    LazyVGrid(columns: gridLayout, spacing: 15) {
                        ForEach(products) { product in
                            ProductItemView(product: product)
                        }
                    }
                    .padding(15)
                    
                    TitleView(title: "Brands")
                    
                    BrandGridView()
                    
                    FooterView()
                        .padding(.horizontal)
                }
            }
        }
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
