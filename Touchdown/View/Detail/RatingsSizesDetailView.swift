//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 01/08/23.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - PROPERTIES
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // MARK: - Ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }
                        
                    }
                }
            }
            Spacer()
            // MARK: - Sizes
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 4) {
                    ForEach(sizes, id: \.self) { item in
                        Button {
                            
                        } label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .frame(width: 28, height: 28, alignment: .center)
                                .foregroundColor(colorGray)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }
                        
                    }
                }
            }
        }
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
