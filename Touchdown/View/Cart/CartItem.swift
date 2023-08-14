//
//  CartItem.swift
//  Touchdown
//
//  Created by Matheus Xavier on 13/08/23.
//

import SwiftUI

struct CartItem: View {
    let product: Product
    var body: some View {
        HStack {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.system(.title2, design: .rounded))
                .fontWeight(.medium)
                
                Text("\(product.formattedPrice)")
                    .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
            }
            .padding()
        }
        .padding()
    }
}

struct CartItem_Previews: PreviewProvider {
    static var previews: some View {
        CartItem(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
