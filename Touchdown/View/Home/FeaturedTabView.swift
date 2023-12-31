//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 31/07/23.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { item in
                FeaturedItemView(player: item)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
