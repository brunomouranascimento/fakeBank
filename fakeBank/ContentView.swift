//
//  ContentView.swift
//  fakeBank
//
//  Created by Bruno Nascimento on 12/04/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            HeaderView()
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
