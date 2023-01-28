//
//  NavigationView.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 27/01/23.
//

import UIKit

class NavigationView: UIView {
    
    private var logoImage : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "primeLogo")
        return imageView
    }()
    

    private var profileButton : UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "poster"), for: .normal)
        button.imageView?.layer.cornerRadius = 20
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(logoImage)
        addSubview(profileButton)
        
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func applyConstraints(){
        let logoImageConstraints = [
            logoImage.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            logoImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 2),
            logoImage.heightAnchor.constraint(equalToConstant: 40),
            logoImage.widthAnchor.constraint(equalToConstant: 120),
        ]
        
        let profileButtonConstraints = [
            profileButton.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            profileButton.leftAnchor.constraint(equalTo: logoImage.rightAnchor, constant: frame.width - 190),
            profileButton.heightAnchor.constraint(equalToConstant: 40),
            profileButton.widthAnchor.constraint(equalToConstant: 40),
        ]
        
        NSLayoutConstraint.activate(logoImageConstraints)
        NSLayoutConstraint.activate(profileButtonConstraints)
    }

}
