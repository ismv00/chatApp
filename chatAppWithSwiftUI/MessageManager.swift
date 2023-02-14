//
//  MessageManager.swift
//  chatAppWithSwiftUI
//
//  Created by Igor S. Menezes on 13/02/23.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class MessageManager: ObservableObject {
    @Published private(set) var messages: [Message] = []
    let db = Firestore.firestore()
    
    init() {
        getMessages()
    }
    
    func getMessages() {
        db.collection("messages").addSnapshotListener { querySnapshot, error in
            guard let documents = querySnapshot?.documents else {
                print("Error fetching documents: \(String(describing: error))")
                return
            }
            
            self.messages = documents.compactMap { document -> Message? in
                do {
                    return try document.data(as: Message.self)
                }catch {
                    print("Error decoding document into Message: \(error)")
                    return nil
                }
            }
            self.messages.sort { $0.timestamp < $1.timestamp }
        }
    }
}