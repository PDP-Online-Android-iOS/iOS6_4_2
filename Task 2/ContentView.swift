//
//  ContentView.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 02/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var defs = UsersDefaults()
    
    init() {
        print(defs.account)
        var account = Account(holderName: "OgabekDev", cardName: "Hamkorbank VISA Platinum", accountBalance: "$22145", spendingLimit: "$50000")
        defs.account = account
        print(defs.account)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
