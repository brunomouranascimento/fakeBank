//
//  HeaderView.swift
//  fakeBank
//
//  Created by Bruno Nascimento on 12/04/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "bell")
                    .font(Font.system(size: 20, weight: .semibold))
                    .foregroundColor(Color.green)
                Spacer()
                Text("FakeBank")
                    .font(Font.custom("Dosis-ExtraBold", size: 18, relativeTo: .title))
                Spacer()
                Text("AJUDA")
                    .font(.custom("Dosis-Bold", size: 14))
                
            }
            .padding(.horizontal)
            .padding(.bottom, 5)
            Divider()
                .background(Color.white)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
