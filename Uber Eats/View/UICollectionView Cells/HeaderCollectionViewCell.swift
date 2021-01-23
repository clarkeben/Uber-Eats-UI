//
//  HeaderCollectionViewCell.swift
//  Uber Eats
//
//  Created by Ben Clarke on 19/01/2021.
//

import UIKit

class HeaderCollectionViewCell: UICollectionViewCell {
    
    static let id = "headerCollectionViewCell"
    
     let titleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "")
        imageView.alpha = 0.6
        imageView.backgroundColor = .white
        return imageView
    }()
    
     let titleLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .black
        return label
    }()
    
    
     let buttonLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
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
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.frame = CGRect(x: 5, y: 10, width: contentView.frame.size.width-10, height: 50)
        titleImageView.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        buttonLabel.frame = CGRect(x: 5, y: contentView.frame.size.height-50, width: contentView.frame.size.width-10, height: 30)
    }
    
}
