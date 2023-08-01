//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 01/08/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIEs
    let product = sampleProduct
    
    // MARK: - BODY
    var body: some View {
        Button {
            
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
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
