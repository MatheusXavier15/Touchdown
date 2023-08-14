//
//  EmptyCartView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 12/08/23.
//

import SwiftUI

struct EmptyCartView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text("Your cart is empty.")
            Text("Please, select one or more products to appear here.")
                .font(.footnote)
                .multilineTextAlignment(.center)
            Image(systemName: "cart.badge.questionmark")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

struct EmptyCartView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyCartView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
