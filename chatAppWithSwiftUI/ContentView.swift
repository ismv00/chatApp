//
//  ContentView.swift
//  chatAppWithSwiftUI
//
//  Created by Igor S. Menezes on 12/02/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessageManager()
    
    var messageArray = ["Hello you", "How are you doing?", "I've been building SwifiUI Applications from scratch and it's so much fun"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                ScrollView {
                    ForEach(messagesManager.messages, id: \.id) { message in
                        MessageBubble(message: message)
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color("Peach"))
            
            MessageField()
                .environmentObject(messagesManager)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
