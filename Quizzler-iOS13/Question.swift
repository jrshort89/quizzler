//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Jake Short on 3/29/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: Bool
    
    init(q: String, a: Bool) {
        text = q
        answer = a
    }
}
