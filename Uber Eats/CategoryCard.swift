//
//  CatCard.swift
//  Uber Eats
//
//  Created by Ben Clarke on 19/01/2021.
//

import Foundation

/// Category card data (UICollectionView Section 1)
struct CategoryCard {
    var imgLabelIcon: String
    var descriptionLabel: String
    
    static func returnData() -> [CategoryCard] {
        var dataToReturn = [CategoryCard]()
        
        dataToReturn.append(CategoryCard(imgLabelIcon: "🍔", descriptionLabel: "Burger"))
        dataToReturn.append(CategoryCard(imgLabelIcon: "🍣", descriptionLabel: "Sushi"))
        dataToReturn.append(CategoryCard(imgLabelIcon: "🍕", descriptionLabel: "Pizza"))
        dataToReturn.append(CategoryCard(imgLabelIcon: "🍳", descriptionLabel: "Breakie"))
        dataToReturn.append(CategoryCard(imgLabelIcon: "🥩", descriptionLabel: "Steak"))
        dataToReturn.append(CategoryCard(imgLabelIcon: "🌮", descriptionLabel: "Taco"))
        dataToReturn.append(CategoryCard(imgLabelIcon: "🥪", descriptionLabel: "Sarnie"))
        
        return dataToReturn
        
    }
    
}
