//
//  DetailView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 01/08/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    let product: Product
    @State var quantity: Int = 0
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5, content: {
                // MARK: - Navbar
                NavigationBarDetailView()
                    .padding(.top, geometry.safeAreaInsets.top)
                
                // MARK: - Header
                
                HeaderDetailView(product: product)
                    .padding(.horizontal)
                    .foregroundColor(.white)
                
                // MARK: - Details
                TopPartDetailView(product: product)
                    .padding(.horizontal)
                
                VStack(alignment: .center, spacing: 0, content: {
                    
                    // MARK: - Ratings + Sizes
                    
                    RatingsSizesDetailView()
                        .padding(.top, -20)
                        .padding(.bottom, 15)
                    
                    // MARK: - Description
                    
                    ScrollView(showsIndicators: false, content: {
                        Text(product.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    })
                    
                    // MARK: - Quantity + Favourite
                    
                    QuantityFavouriteDetailView(counter: $quantity)
                        .padding(.vertical, 10)
        
                    
                    // MARK: - Add to Cart
                    AddToCartDetailView(product: product, quantity: $quantity)
                        .padding(.bottom, 20)
                })
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
                .zIndex(-1)
            })
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: product.red, green: product.green, blue: product.blue)
                    .ignoresSafeArea(.all, edges: .all)
            )
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: sampleProduct)
    }
}
