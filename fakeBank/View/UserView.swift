//
//  UserView.swift
//  fakeBank
//
//  Created by Bruno Nascimento on 12/04/22.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        VStack {
            
            HStack {
                HStack {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                    Text("BRUNO MOURA NASCIMENTO")
                        .font(Font.custom("Dosis-Bold", size: 18, relativeTo: .subheadline))
                        .padding(.leading, 12)
                }
                Spacer()
                Image(systemName: "gear")
                    .font(.system(size: 20, weight: .regular))
            }
            Divider()
                .background(Color.white)
        }
        .padding(.bottom, 15)
        .padding(.top, 5)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
