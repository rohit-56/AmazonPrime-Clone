//
//  TitileCollectionViewCell.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 27/01/23.
//

import UIKit

class TitileCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitileCollectionViewCell"
    
    private var imageView : UIImageView = {
       var imageView = UIImageView()
        imageView.image = UIImage(named: "poster")
        return imageView
    }()
  
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
    
}
