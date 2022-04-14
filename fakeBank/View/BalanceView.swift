//
//  BalanceView.swift
//  fakeBank
//
//  Created by Bruno Nascimento on 12/04/22.
//

import SwiftUI

struct BalanceView: View {
    @Environment(\.colorScheme) var theme
    
    @State var viewModel = BalanceViewModel()
    
    var body: some View {
        VStack {
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("SALDO CONTA-CORRENTE")
                        .opacity(0.7)
                        .font(Font.custom("Dosis-Regular", size: 14, relativeTo: .subheadline))
                    Text(viewModel.showBalance ? "R$  10.461,00" : "R$   * * * * *" )
                        .font(Font.custom("Dosis-Bold", size: 26, relativeTo: .subheadline))
                }
                Spacer()
                Button{viewModel.balanceToggle()} label: {
                    Image(systemName: viewModel.showBalance ? "eye.slash" : "eye")
                        .font(.system(size: 20, weight: .regular))
                }
                .padding(.top, 20)
                .foregroundColor(theme == .dark ? Color.white : Color.black)
                
            }
            .padding(.bottom, 20)
            Divider()
                .background(Color.white)
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
    }
}
