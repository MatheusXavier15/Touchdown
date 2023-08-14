//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 01/08/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIEs
    let product: Product
    @EnvironmentObject var cart: Cart
    @Binding public var quantity: Int
    
    // MARK: - BODY
    var body: some View {
        Button {
            if quantity > 0 {
                feedback.impactOccurred()
                let productsToAdd = cart.products + Array(repeating: product, count: quantity);
                cart.products = productsToAdd
            }
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(red: product.red, green: product.green, blue: product.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        @State var quantity = 2;
        AddToCartDetailView(product: sampleProduct, quantity: $quantity)
            .environmentObject(Cart())
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
