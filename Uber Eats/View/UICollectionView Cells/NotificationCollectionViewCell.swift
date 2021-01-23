//
//  NotificationCollectionViewCell.swift
//  Uber Eats
//
//  Created by Ben Clarke on 19/01/2021.
//

import UIKit

class NotificationCollectionViewCell: UICollectionViewCell {
    static let id = "notCollectionViewCell"
    
    let notificationImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "")
        imageView.alpha = 1.0
        imageView.backgroundColor = .white
        return imageView
    }()
    
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Sushi"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        return label
    }()
    
    let infoDescLabel: UILabel = {
        let label = UILabel()
        label.text = "Please configure your account with your details!"
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        contentView.addSubview(notificationImage)
        contentView.addSubview(infoLabel)
        contentView.addSubview(infoDescLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        notificationImage.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        infoLabel.frame = CGRect(x: 120, y: 10, width: 200, height: 30)
        infoDescLabel.frame = CGRect(x: 120, y: 40, width: 250, height: 60)
    }
}
