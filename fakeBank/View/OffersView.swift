//
//  OffersView.swift
//  fakeBank
//
//  Created by Bruno Nascimento on 13/04/22.
//

import SwiftUI

struct OffersView: View {
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<10) {_ in
                    Offer()
                }
            }
            .padding(.bottom)
            Divider()
                .background(Color.white)
        }
        .padding(.top, 10)
    }
}

struct Offer: View {
    @Environment(\.colorScheme) var theme
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(theme == .dark ? Color.white : Color.black)
                .frame(width: 380, height: 150)
                .background(theme == .dark ? Color.black : Color.white)
            VStack {
                Spacer()
                Text("Oferta")
                    .font(Font.custom("Dosis-Regular", size: 36, relativeTo: .title))
                    .foregroundColor(theme == .dark ? Color.black : Color.white)
                Text("Texto de oferta para o usuário")
                    .font(Font.custom("Dosis-Regular", size: 16, relativeTo: .body))
                    .foregroundColor(theme == .dark ? Color.black : Color.white)
                Spacer()
                Image(systemName: "creditcard.fill")
                    .font(.system(size: 30, weight: .regular))
                    .foregroundColor(theme == .dark ? Color.black : Color.white)
                Spacer()
                Rectangle()
                    .fill(Color.green)
                    .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                    .frame(width: 380, height: 35)
            }
        }
    }
}

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct OffersView_Previews: PreviewProvider {
    static var previews: some View {
        OffersView()
    }
}
