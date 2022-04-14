//
//  ShopView.swift
//  fakeBank
//
//  Created by Bruno Nascimento on 13/04/22.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    VStack {
                        HStack {
                            Text("FakeShop")
                                .font(Font.custom("Dosis-Bold", size: 16, relativeTo: .body))
                            Spacer()
                        }
                        Spacer()
                        Image("easter2")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .frame(width: 350, height: 150)
                    }
                }
                
            }
            .padding(.bottom, 15)
            Divider()
                .background(Color.white)
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
