//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 01/08/23.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        ZStack(alignment: .leading) {
            // MARK: - Price
            
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Price")
                        .fontWeight(.semibold)
                    
                    Text(product.formattedPrice)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .scaleEffect(isAnimating ? 1.35 : 1, anchor: .leading)
                }
                .offset(y: isAnimating ? -50 : -75)
                Spacer()
            }
            
            // MARK: - Photo
            HStack {
                Spacer()
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .offset(y: isAnimating ? 0 : -35)
                .frame(width: 200, height: 200)
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating = true
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
