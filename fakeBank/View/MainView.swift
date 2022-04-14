//
//  MainView.swift
//  fakeBank
//
//  Created by Bruno Nascimento on 12/04/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            UserView()
            BalanceView()
            OffersView()
            FavoritesView()
        }
        .padding(.horizontal)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
