//
//  FavouritesCollectionViewCell.swift
//  Uber Eats
//
//  Created by Ben Clarke on 19/01/2021.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    static let id = "favouritesCollectionViewCell"
    
     let titleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "japanese")
        imageView.alpha = 1.0
        imageView.backgroundColor = .white
        return imageView
    }()
    
     let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .black
        return label
    }()
    
    
     let bottomLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        contentView.addSubview(titleImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(bottomLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleImageView.frame = CGRect(x: 10, y: 10, width: contentView.frame.size.width-20, height: (contentView.frame.size.height/3)*2)
        titleLabel.frame = CGRect(x: 10, y: contentView.frame.size.height-60, width: contentView.frame.size.width-10, height: 30)
        bottomLabel.frame = CGRect(x: 10, y: contentView.frame.size.height-40, width: contentView.frame.size.width-10, height: 30)
    }
}
