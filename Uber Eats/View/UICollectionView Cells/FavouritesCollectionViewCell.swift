//
//  FavouritesCollectionViewCell.swift
//  Uber Eats
//
//  Created by Ben Clarke on 19/01/2021.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    static let id = "favouritesCollectionViewCell"
    
    //TODO: - CONFIGURE CELL HERE
     let titleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "japanese")
        imageView.alpha = 1.0
        imageView.backgroundColor = .white
        return imageView
    }()
    
     let titleLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .black
        //label.backgroundColor = .green
        return label
    }()
    
    
     let buttonLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    ///Setup View object
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        contentView.addSubview(titleImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(buttonLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    ///Aside  frame
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //titleLabel.frame = CGRect(x: 5, y: 10, width: contentView.frame.size.width-10, height: 50)

        titleImageView.frame = CGRect(x: 10, y: 10, width: contentView.frame.size.width-20, height: (contentView.frame.size.height/3)*2)
        
        buttonLabel.frame = CGRect(x: 10, y: contentView.frame.size.height-60, width: contentView.frame.size.width-10, height: 30)
    }
}
