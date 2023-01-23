//
//  extensions.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 22/01/23.
//

import Foundation
import UIKit

extension UITextField {
    
    func addIconOnLeft(_ padding : CGFloat , _ imageName : String){
        let leftview = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.size.height))
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: padding - 20.0 , height: self.frame.size.height - 20.0))
        
        imageView.image = UIImage(systemName: imageName)
        
        leftview.addSubview(imageView)
        
        self.leftView = leftview
        self.leftViewMode = .always
    }
    
}
