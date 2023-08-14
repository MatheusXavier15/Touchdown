//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 01/08/23.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - PROPERTIES
    
    @Binding public var counter: Int
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                feedback.impactOccurred()
            } label: {
                 Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }

        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        @State var counter = 0;
        QuantityFavouriteDetailView(counter: $counter)
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
