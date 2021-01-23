//
//  Header.swift
//  Uber Eats
//
//  Created by Ben Clarke on 18/01/2021.
//

import UIKit

class Header: UICollectionReusableView {
    
    var label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        label.text = "Restaurants, cuisines & dishes"
        
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
