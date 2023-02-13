//
//  ContentView.swift
//  chatAppWithSwiftUI
//
//  Created by Igor S. Menezes on 12/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleRow()
        }
        .background(Color("Peach"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
