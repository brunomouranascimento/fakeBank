//
//  UserViewModel.swift
//  fakeBank
//
//  Created by Bruno Nascimento on 14/04/22.
//

import Foundation


struct BalanceViewModel {
    var showBalance = true
    
    mutating func balanceToggle() {
        self.showBalance.toggle()
    }
}
