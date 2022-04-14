//
//  FavoritesView.swift
//  fakeBank
//
//  Created by Bruno Nascimento on 13/04/22.
//

import SwiftUI

struct FavoritesView: View {
    @Environment(\.colorScheme) var theme
    
    var body: some View {
        VStack {
            ScrollViewReader { value in
                HStack {
                    Text("Favoritos")
                        .font(Font.custom("Dosis-Bold", size: 16, relativeTo: .body))
                    Spacer()
                }
                HStack {
                    VStack {
                        Image(systemName: "dollarsign.circle")
                            .font(.system(size: 56, weight: .ultraLight))
                            .foregroundColor(Color.green)
                        Spacer()
                        Text("Saldo e extrato")
                            .font(Font.custom("Dosis-Regular", size: 16, relativeTo: .body))
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "creditcard")
                            .font(.system(size: 56, weight: .ultraLight))
                            .foregroundColor(Color.green)
                        Spacer()
                        Text("Cartões")
                            .font(Font.custom("Dosis-Regular", size: 16, relativeTo: .body))
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "barcode")
                            .font(.system(size: 56, weight: .ultraLight))
                            .foregroundColor(Color.green)
                        Spacer()
                        Text("Pagamentos")
                            .font(Font.custom("Dosis-Regular", size: 16, relativeTo: .body))
                    }
                }
                .padding(.vertical, 10)
                Button{withAnimation {value.scrollTo(1, anchor: .top)}} label:{
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(theme == .dark ? Color.white : Color.black, lineWidth: 1)
                            .foregroundColor(Color.white)
                            .frame(width: 120, height: 40)
                        Label("Ver mais", systemImage: "chevron.down")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(theme == .dark ? Color.white : Color.black)
                            .cornerRadius(50)
                        
                    }
                }
                .cornerRadius(50)
                .padding(.bottom, 10)
                
                Divider()
                    .background(Color.white)
                ShopView()
                    .id(1)
                ServicesView()
            }
            .padding(.vertical, 10)
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
