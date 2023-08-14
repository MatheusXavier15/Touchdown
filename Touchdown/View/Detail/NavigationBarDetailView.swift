//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 01/08/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            HStack {
                Button {
                    feedback.impactOccurred()
                    withAnimation(.easeOut) {
                        shop.selectedPRoduct = nil
                        shop.showingProduct = false
                    }
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.white)
                }
                Spacer()
                NavigationLink {
                    CartView()
                } label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding([.vertical, .horizontal], 20)
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
