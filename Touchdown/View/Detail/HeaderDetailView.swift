//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 01/08/23.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
