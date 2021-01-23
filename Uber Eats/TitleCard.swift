//
//  TitleCard.swift
//  Uber Eats
//
//  Created by Ben Clarke on 19/01/2021.
//

import Foundation

struct Card {
    let headLine: String
    let imageName: String
    let buttonText: String
}

struct TitleCards {
    
     static func returnData() -> [Card] {
        var data = [Card]()
        
        data.append(Card(headLine: "Discover what's new on Uber Eats", imageName: "cereal", buttonText: "Tap here now →"))
        data.append(Card(headLine: "$10 off when you invite a friend", imageName: "breakfast", buttonText: "Tap to find out more →"))
        data.append(Card(headLine: "$10 for you, $10 for a friend", imageName: "japanese", buttonText: "Discover new cuisines →"))
        
        return data
    }
    
    
}
