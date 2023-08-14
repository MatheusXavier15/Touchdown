//
//  CartView.swift
//  Touchdown
//
//  Created by Matheus Xavier on 12/08/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: Cart
    @EnvironmentObject var shop: Shop
    var body: some View {
        NavigationView {
            VStack {
                if cart.products.count > 0 {
                    ScrollView {
                        ForEach(Array(cart.products.enumerated()), id: \.offset) { (index, product) in
                            HStack {
                                CartItem(product: product)
                                Spacer()
                                Button {
                                    cart.products.remove(at: index)
                                } label: {
                                    Image(systemName: "trash")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .foregroundColor(.gray)
                                }
                                .padding(.trailing, 25)
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        HStack(alignment: .center){
                            Text("Price")
                                .font(.system(.title, design: .rounded))
                                .fontWeight(.bold)
                            Spacer()
                            Text("\(cart.products.map({ $0.price }).reduce(0, +).formatted(.currency(code: "BRL")))")
                                .font(.system(.title))
                                .fontWeight(.bold)
                        }
                        HStack(alignment: .center){
                            Text("Total items")
                                .font(.system(.title, design: .rounded))
                                .fontWeight(.bold)
                            Spacer()
                            Text("\(cart.products.count)")
                                .font(.system(.title))
                                .fontWeight(.bold)
                        }
                        Button {
                            
                        } label: {
                            Spacer()
                            Text("Finish order".uppercased())
                                .font(.system(.title2, design: .rounded))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(15)
                        .background(
                            Color.black
                        )
                        .clipShape(Capsule())
                    }.padding()
                } else {
                    EmptyCartView()
                }
            }
            .navigationTitle("Cart")
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(Cart())
            .environmentObject(Shop())
    }
}
