//
//  CategoryCollectionViewCell.swift
//  Uber Eats
//
//  Created by Ben Clarke on 19/01/2021.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    static let id = "catCollectionViewCell"
    
     let catFoodImgLabel: UILabel = {
        let label = UILabel()
        label.text = "🍣"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .black
        return label
    }()
    
    
     let catLabel: UILabel = {
        let label = UILabel()
        label.text = "Sushi"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 11)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        contentView.addSubview(catFoodImgLabel)
        contentView.addSubview(catLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        catFoodImgLabel.frame = CGRect(x: 20, y: 20, width: contentView.frame.size.width, height: 30)
        catLabel.frame = CGRect(x: 25, y: contentView.frame.size.height-30, width: contentView.frame.size.width, height: 30)
    }
    
}
