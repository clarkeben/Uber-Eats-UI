//
//  TitleCard.swift
//  Uber Eats
//
//  Created by Ben Clarke on 19/01/2021.
//

import Foundation

/// Title card data (UICollectionView Section 0)
struct TitleCard {
    
    let headLine: String
    let imageName: String
    let buttonText: String
    
     static func returnData() -> [TitleCard] {
        var data = [TitleCard]()
        
        data.append(TitleCard(headLine: "Discover what's new on Uber Eats", imageName: "cereal", buttonText: "Tap here now →"))
        data.append(TitleCard(headLine: "$10 off when you invite a friend", imageName: "breakfast", buttonText: "Tap to find out more →"))
        data.append(TitleCard(headLine: "$10 for you, $10 for a friend", imageName: "japanese", buttonText: "Discover new cuisines →"))
        
        return data
    }
    
    
}
