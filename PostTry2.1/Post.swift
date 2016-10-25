//
//  Post.swift
//  PostTry2.1
//
//  Created by Nathan Hopkins on 10/25/16.
//  Copyright © 2016 NathanHopkins. All rights reserved.
//

import Foundation

class Post {
    private let keyUsername = "username"
    private let keyText = "text"
    private let keyTimestamp = "timestamp"
    
    let username: String
    let text: String
    let timestamp: TimeInterval
    let identifier: UUID
    
    init(username: String, text: String) {
        self.username = username
        self.text = text
        self.timestamp = Date().timeIntervalSince1970
        self.identifier = UUID()
    }
    
    init?(dictionary: [String: Any], identifier: String) {
        guard let username = dictionary[keyUsername] as? String, let text = dictionary[keyText] as? String, let timestamp = dictionary[keyTimestamp] as? Double, let identifier = UUID(uuidString: identifier) else { return nil }
        
        self.username = username
        self.text = text
        self.timestamp = timestamp
        self.identifier = identifier
    }
}
