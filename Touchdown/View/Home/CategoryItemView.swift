//
//  CategoryItemVIew.swift
//  Touchdown
//
//  Created by Matheus Xavier on 31/07/23.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    
    let category: Category
    
    // MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }

    }
}

struct CategoryItemVIew_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
