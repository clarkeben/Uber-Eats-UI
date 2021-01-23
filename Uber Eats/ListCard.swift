//
//  ListCard.swift
//  Uber Eats
//
//  Created by Ben Clarke on 19/01/2021.
//

import Foundation

/// List card data (UICollectionView Section 3 &&  5)
struct ListCard {
    
    let headLine: String
    let imageName: String
    let bottomText: String
    
     static func returnData() -> [ListCard] {
        var data = [ListCard]()
        
        data.append(ListCard(headLine: "KFC - London - Mayfair", imageName: "kfc", bottomText: "$ • American • Fast food"))
        data.append(ListCard(headLine: "Wasabi - London - Kensington", imageName: "wasabi", bottomText: "$$ • Japanese • Sushi"))
        data.append(ListCard(headLine: "Mexican - London - Bond Street", imageName: "lachoza", bottomText: "$$$ • Mexican • Burito"))
        
        return data
    }
    
    
}
