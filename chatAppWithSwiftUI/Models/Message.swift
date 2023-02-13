//
//  Message.swift
//  chatAppWithSwiftUI
//
//  Created by Igor S. Menezes on 12/02/23.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
